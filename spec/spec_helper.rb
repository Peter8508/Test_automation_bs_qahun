require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.register_driver :custom do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :custom
  config.app_host = 'https://www.google.com' # change url
end

Before do |scenario|
  page.driver.browser.manage.window.maximize
end