Dir[Rails.root.join('scripts' ,'generators', 'core', '*.rb')].each { |file| require file }

namespace :v1 do

  desc "generate core scaffolds for v1 model"
  task :generate_core do
    `#{MapScaffold.new.generate_command}`
    `#{GroupScaffold.new.generate_command}`
    `#{ProfileScaffold.new.generate_command}`
    `#{RoleScaffold.new.generate_command}`
    `#{UserScaffold.new.generate_command}`
  end

  desc "destroy core scaffolds for v1 model"
  task :destroy_core do
    `#{MapScaffold.new.destroy_command}`
    `#{GroupScaffold.new.destroy_command}`
    `#{ProfileScaffold.new.destroy_command}`
    `#{RoleScaffold.new.destroy_command}`
    `#{UserScaffold.new.destroy_command}`
  end
end

