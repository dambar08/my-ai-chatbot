RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

FactoryBot.use_parent_strategy = false

ActiveSupport::Notifications.subscribe("factory_bot.run_factory") do |name, start, finish, id, payload|
  execution_time_in_seconds = finish - start

  if execution_time_in_seconds >= 0.5
    $stderr.puts "Slow factory: #{payload[:name]} using strategy #{payload[:strategy]}"
  end
end
