require 'rspec'
require_relative '../driver'
require_relative '../loginpage'
require_relative '../dashboardpage'

describe "LoginTest", :type => :selenium do
    before(:all) do
        @driver = DriverWrapper()
        @page = LoginPage(@driver)
        @dashboardpage = DashboardPage(@driver)
    end

    it "goes to the login page" do
        @page.visit()
    end

    it "submits the login form" do
        @page.login('testaccount_normal', 'password123')
    end

    it "should load the dashboard page" do
        @dashboardpage.title.should eql('Welcome to the JW Platform')
    end
    
end