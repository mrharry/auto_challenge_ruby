require 'selenium-webdriver'
require 'cucumber'

case ENV['BROWSER']
when 'ff'
  driver_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'drivers', 'geckodriver'))
  browser = Selenium::WebDriver.for :firefox, driver_path: driver_path
when 'chrome'
  driver_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'drivers', 'chromedriver'))
  browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
else
  driver_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'drivers', 'chromedriver'))
  browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
end

Before do |_scenario|
  @browser = browser
end

at_exit do
  browser.quit
end
