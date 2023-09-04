# frozen_string_literal: true

require 'rails/generators/base'
require 'rails/generators/generated_attribute'

module Rails
  module Generators
    class NamedBase < Base
      argument :name, type: :string
      argument :v1_table_name, type: :string

      def initialize(args, *options) # :nodoc:
        @inside_template = nil
        # Unfreeze name in case it's given as a frozen string
        args[0] = args[0].dup if args[0].is_a?(String) && args[0].frozen?
        super
        assign_names!(name)
        parse_attributes! if respond_to?(:attributes)
      end

      # Overrides <tt>Thor::Actions#template</tt> so it can tell if
      # a template is currently being created.
      no_tasks do
        def template(source, *args, &)
          inside_template do
            Rails::Generators.add_generated_file(super)
          end
        end

        def js_template(source, destination)
          template("#{source}.js", "#{destination}.js")
        end
      end

      class << self
        private

        attr_reader :file_name

        # FIXME: We are avoiding to use alias because a bug on thor that make
        # this method public and add it to the task list.
        # :doc:
        def singular_name
          file_name
        end

        # :doc:
        def inside_template
          @inside_template = true
          yield
        ensure
          @inside_template = false
        end

        # :doc:
        def inside_template?
          @inside_template
        end

        # :doc:
        def file_path
          @file_path ||= (class_path + [file_name]).join('/')
        end

        # :doc:
        def class_path
          inside_template? || !namespaced? ? regular_class_path : namespaced_class_path
        end

        # :doc:
        def regular_class_path
          @class_path
        end

        # :doc:
        def namespaced_class_path
          @namespaced_class_path ||= namespace_dirs + @class_path
        end

        # :doc:
        def class_name
          (class_path + [file_name]).map!(&:camelize).join('::')
        end

        # :doc:
        def human_name
          @human_name ||= singular_name.humanize
        end

        # :doc:
        def plural_name
          @plural_name ||= singular_name.pluralize
        end

        # :doc:
        def i18n_scope
          @i18n_scope ||= file_path.tr('/', '.')
        end

        # :doc:
        def table_name
          @table_name ||= begin
            base = pluralize_table_names? ? plural_name : singular_name
            (class_path + [base]).join('_')
          end
        end

        # :doc:
        def uncountable?
          singular_name == plural_name
        end

        # :doc:
        def index_helper(type: nil)
          [plural_route_name, ('index' if uncountable?), type].compact.join('_')
        end

        # :doc:
        def show_helper(arg = "@#{singular_table_name}", type: :url)
          "#{singular_route_name}_#{type}(#{arg})"
        end

        # :doc:
        def edit_helper(...)
          "edit_#{show_helper(...)}"
        end

        # :doc:
        def new_helper(type: :url)
          "new_#{singular_route_name}_#{type}"
        end

        # :doc:
        def singular_table_name
          @singular_table_name ||= (pluralize_table_names? ? table_name.singularize : table_name)
        end

        # :doc:
        def plural_table_name
          @plural_table_name ||= (pluralize_table_names? ? table_name : table_name.pluralize)
        end

        # :doc:
        def plural_file_name
          @plural_file_name ||= file_name.pluralize
        end

        # :doc:
        def fixture_file_name
          @fixture_file_name ||= (pluralize_table_names? ? plural_file_name : file_name)
        end

        # :doc:
        def route_url
          @route_url ||= "#{controller_class_path.map { |dname| "/#{dname}" }.join}/#{plural_file_name}"
        end

        # :doc:
        def url_helper_prefix
          @url_helper_prefix ||= (class_path + [file_name]).join('_')
        end

        # Tries to retrieve the application name or simply return application.
        # :doc:
        def application_name
          if defined?(Rails) && Rails.application
            Rails.application.class.name.split('::').first.underscore
          else
            'application'
          end
        end

        # :doc:
        def redirect_resource_name
          model_resource_name(prefix: '@')
        end

        # :doc:
        def model_resource_name(base_name = singular_table_name, prefix: '')
          resource_name = "#{prefix}#{base_name}"
          if options[:model_name]
            "[#{controller_class_path.map { |name| ":#{name}" }.join(', ')}, #{resource_name}]"
          else
            resource_name
          end
        end

        # :doc:
        def singular_route_name
          if options[:model_name]
            "#{controller_class_path.join('_')}_#{singular_table_name}"
          else
            singular_table_name
          end
        end

        # :doc:
        def plural_route_name
          if options[:model_name]
            "#{controller_class_path.join('_')}_#{plural_table_name}"
          else
            plural_table_name
          end
        end

        def assign_names!(name)
          @class_path = name.include?('/') ? name.split('/') : name.split('::')
          @class_path.map!(&:underscore)
          @file_name = @class_path.pop
        end

        # Convert attributes array into GeneratedAttribute objects.
        def parse_attributes!
          self.attributes = (attributes || []).map do |attr|
            Rails::Generators::GeneratedAttribute.parse(attr)
          end
        end

        # :doc:
        def attributes_names
          @attributes_names ||= attributes.each_with_object([]) do |a, names|
            names << a.column_name
            names << 'password_confirmation' if a.password_digest?
            names << "#{a.name}_type" if a.polymorphic?
          end
        end

        # :doc:
        def pluralize_table_names?
          !defined?(ActiveRecord::Base) || ActiveRecord::Base.pluralize_table_names
        end

        # :doc:
        def mountable_engine?
          defined?(ENGINE_ROOT) && namespaced?
        end

        # Add a class collisions name to be checked on class initialization. You
        # can supply a hash with a +:prefix+ or +:suffix+ to be tested.
        #
        # ==== Examples
        #
        #   check_class_collision suffix: "Decorator"
        #
        # If the generator is invoked with class name Admin, it will check for
        # the presence of "AdminDecorator".
        #
        # :doc:
        def self.check_class_collision(options = {})
          define_method(:check_class_collision) do
            name = if respond_to?(:controller_class_name, true) # for ResourceHelpers
              controller_class_name
            else
              class_name
            end

            class_collisions("#{options[:prefix]}#{name}#{options[:suffix]}")
          end
        end
      end
    end
  end
end

