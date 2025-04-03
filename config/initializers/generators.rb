Rails.application.configure do
  config.generators do |g|
    g.orm :active_record
    g.test_framework :rspec, fixture: false, views: true, fixture_replacement: :factory_bot
  end
end
