require 'rubygems'
require 'selenium-webdriver'
 
class DriverWrapper
 
  def initialize ()
    @driver = Selenium::WebDriver.for(:firefox)
  end
 
  def switch_to_window(handle)
    @driver.switch_to.window handle
  end
 
  def switch_to_frame (handle)
    @driver.switch.frame handle
  end
 
  def launch_url ( url)
    @driver.navigate.to url
  end
 
  def refresh
    @driver.get @driver.url
  end
 
  def teardown
    @driver.quit
  end
end