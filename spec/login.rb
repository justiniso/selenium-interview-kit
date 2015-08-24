require 'rspec'
require_relative '../driver'
require_relative '../loginpage'

describe "LoginTest", :type => :selenium do
    before(:all) do
        @driver = DriverWrapper()
        @page = LoginPage(@driver)
    end

    it "goes to the login page" do
        @page.visit()
    end
    
end