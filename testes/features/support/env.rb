require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

#variavel global
AMBIENTE = ENV['AMBIENTE']
BROWSER = ENV['AMBIENTE']

#carregar o ambiente de homolog  'arquivo yml'
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

#tornar o Helper (o modulo) global
World(Helper)
#tornar o Pages (o modulo) global
World(Pages)


Capybara.register_driver :selenium do |app|

if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
elseif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
elseif BROWSER.eql?('ie')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explore)
end
end


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
end