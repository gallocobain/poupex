require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/dsl'
require 'capybara/poltergeist'
#require 'phantomjs/poltergeist'
#require 'faker'


Capybara.register_driver :selenium do |app|
    Capybara::Poltergeist::Driver.new(app, js_erros: false)
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://www.poupex.com.br'
end

Capybara.default_max_wait_time = 5