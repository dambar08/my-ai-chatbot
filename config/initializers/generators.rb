Rails.application.configure do
  config.generators do |g|
    g.orm :active_record
    g.test_framework :rspec, fixture: false, views: true
    g.fixture_replacement :factory_bot, dir: Rails.root.join("spec/factories")
  end
end
