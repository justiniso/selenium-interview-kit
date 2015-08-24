
class SeleniumHelper

    def initialize(webDriver)
        @driver = webDriver
    end

    def wait_find(by, seconds = 5)
        wait = Selenium::WebDriver::Wait.new(:timeout => seconds)
        wait.until { @driver.find_element(:css, by) }
    end

end