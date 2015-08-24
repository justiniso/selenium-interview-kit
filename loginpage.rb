
class LoginPage

    def initialize (webDriver)
        @driver = webDriver
        @url = 'https://account.jwplayer.com'
    end

    def visit()
        @driver.get(@url)
    end
end



    