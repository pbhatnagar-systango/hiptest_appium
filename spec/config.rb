require 'rubygems'
require 'appium_lib'
require 'yaml'
require 'pry'

opts = {
  caps: {
    'deviceName' => 'iPhone 8',
    'platformName' => 'iOS',
    'platformVersion' => '12.2',
    'app' => '/Users/macmini04/Downloads/Youtility-QA.app',
    'fullReset' => true,
    'automationName' => 'XCUITest'
  },
  appium_lib: {
    wait_timeout: 30
  }
}

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.before(:suite) do
    @implicit_wait_timeout = 15
    @driver = Appium::Driver.new(opts, true).start_driver
    @driver.manage.timeouts.implicit_wait = @implicit_wait_timeout
    Appium.promote_appium_methods Object
  end

  config.after(:all) do
    @driver.driver_quit
  end
end
