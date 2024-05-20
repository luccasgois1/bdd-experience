require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = ENV["HEADLESS_MODE"].to_s.downcase == "true" ? :selenium_headless : :selenium
    config.default_max_wait_time = 5
end