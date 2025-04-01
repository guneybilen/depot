require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]
  # driven_by :selenium, using: :chrome, screen_size: [ 1400, 1400 ]
  # driven_by :selenium, using: :firefox, screen_size: [ 1400, 1400 ]
  
 # Create Chrome options
  chrome_options = Selenium::WebDriver::Chrome::Options.new
  chrome_options.binary = '/usr/local/chrome-for-testing/chrome' # Specify Chrome binary

  # Set up Selenium directly with the Chromedriver path
  Selenium::WebDriver::Chrome::Service.driver_path = '/usr/local/bin/chromedriver'

  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]
 
end
