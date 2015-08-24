require 'helper'

class DashboardPage

    def initialize (webDriver)
        @driver = webDriver
        @url = 'http://dashboard.jwplatform.com/home/'

        @locator_css_title = 'h2'
    end

    def visit()
        @driver.get(@url)
    end

    def title()
        e = SeleniumHelper(@driver).wait_find(@locator_css_title)
        return e.text
    end
end



    