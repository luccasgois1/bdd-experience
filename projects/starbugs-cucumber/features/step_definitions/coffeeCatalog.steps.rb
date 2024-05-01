When('The User access the main page of StarBugs') do
    @home.open
end

Then('The User should see the available coffee options') do
    expect(@home.coffee_list.size).to be > 0
end

Given('The User is on the main page of StartBugs') do
    @home.open
end

Given('The User wants to buy a product:') do |table|
    @product_obj = table.rows_hash
end

When('The User clicks to buy the coffee') do
    @home.buy_coffee(@product_obj[:name])
end

Then('The User goes to Checkout page with the details of the Product') do
    expect(@checkout.product_title).to eql @product_obj[:name]
    expect(@checkout.product_sub_cost).to eql @product_obj[:cost]
    expect(@checkout.product_delivery_price).to eql @product_obj[:delivery]
end

Then('The total cost must be {string}') do |total_cost|
    expect(@checkout.total_price).to eql total_cost
end

Then('The User sees a popup for unavailable product') do
    expected_popup_message = 'Produto indisponível'
    expect(@popup.text).to include(expected_popup_message)
end