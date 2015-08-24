require 'helper'

class LoginPage

    def initialize (webDriver)
        @driver = webDriver
        @url = 'https://account.jwplayer.com'

        @locator_css_username = 'input[name="login"]'
        @locator_css_password = '#password'
        @locator_css_submit = 'input[name="form.submitted]'
    end

    def visit()
        @driver.get(@url)
    end

    def login(username, password)
        self.visit()
        e = SeleniumHelper(@driver).wait_find(@locator_css_username)
        e.send_keys username

        e = SeleniumHelper(@driver).wait_find(@locator_css_password)
        e.send_keys password

        e = SeleniumHelper(@driver).wait_find(@locator_css_submit)
        e.click()
    end
end



    