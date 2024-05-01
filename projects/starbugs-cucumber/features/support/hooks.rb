require_relative '../pages/home.rb'
require_relative '../pages/components.rb'
require_relative '../pages/confirm_order.rb'
require_relative '../pages/checkout.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @confirm_order = ConfirmOrderPage.new
    
    @popup = Popup.new
end