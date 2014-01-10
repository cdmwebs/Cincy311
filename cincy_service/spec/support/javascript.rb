require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app)
end

Capybara.javascript_driver = ENV.fetch("JS_DRIVER", "poltergeist").to_sym

