# NOTE: Based off https://github.com/rubocop/rubocop-rails/blob/master/lib/rubocop/cop/rails/http_positional_arguments.rb
module RuboCop
  module Cop
    module Rails
      # Identifies usages of http methods like `post`, `put`, `patch`
      # without specifying the encoding using the :as argument.
      # https://api.rubyonrails.org/classes/ActionDispatch/IntegrationTest.html
      # @example
      #   # bad
      #   post :new, params: { user_id: 1 }
      #
      #   # good
      #   post :new, params: { user_id: 1 }, as: :json
      #   post :new, **options, as: :yaml
      class HttpAsArgument < Base
        include RangeHelp
        extend AutoCorrector
        extend TargetRailsVersion

        MSG = 'Use `as:` to set encoding for http actions so that the parameters are sent with the correct request ' \
              'encoding. Autocorrect will correct to :json'.freeze
        ROUTING_METHODS = [:draw, :routes, :resource, :resources].freeze
        RESTRICT_ON_SEND = [:post, :put, :patch].freeze

        minimum_target_rails_version 5.0

        def_node_matcher :http_request?, <<~PATTERN
          (send nil? {#{RESTRICT_ON_SEND.map(&:inspect).join(' ')}} !nil? $_ ...)
        PATTERN

        def on_send(node)
          return if in_routing_block?(node)

          http_request?(node) do |data|
            return unless needs_conversion?(data)

            add_offense(highlight_range(node), message: MSG) do |corrector|
              corrector.replace(node.loc.expression, correction(node))
            end
          end
        end

        private

        def in_routing_block?(node)
          !!node.each_ancestor(:block).detect { |block| ROUTING_METHODS.include?(block.method_name) }
        end

        def needs_conversion?(data)
          data.each_pair.none? do |pair|
            pair.key.sym_type? && pair.key.value == :as
          end
        end

        def highlight_range(node)
          _http_path, *data = *node.arguments

          range_between(data.first.source_range.begin_pos, data.last.source_range.end_pos)
        end

        def correction(node)
          args_string = node.arguments.map(&:source).join(', ')

          if parentheses?(node)
            "#{node.method_name}(#{args_string}, as: :json)"
          else
            "#{node.method_name} #{args_string}, as: :json"
          end
        end
      end
    end
  end
end
