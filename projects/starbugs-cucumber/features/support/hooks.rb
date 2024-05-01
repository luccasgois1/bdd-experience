require_relative '../pages/home.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    
    @popup = Popup.new
end