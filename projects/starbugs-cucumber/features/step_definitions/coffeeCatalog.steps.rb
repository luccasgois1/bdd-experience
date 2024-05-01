When('The User access the main page of StarBugs') do
    visit 'https://starbugs.vercel.app'
end

Then('The User should see the available coffee options') do
    coffees = all('.coffee-item')
    expect(coffees.size).to be > 0
end

Given('The User is on the main page of StartBugs') do
    visit 'https://starbugs.vercel.app'
end

Given('The User wants to buy a product:') do |table|
    @product_obj = table.rows_hash
end

When('The User clicks to buy the coffee') do
    product = find('.coffee-item', text: @product_obj[:name])
    product.find('.buy-coffee').click
end

Then('The User goes to Checkout page with the details of the Product') do
    product_title = find('.item-details h1')
    expect(product_title.text).to eql @product_obj[:name]

    sub_cost = find('.subtotal .sub-price')
    expect(sub_cost.text).to eql @product_obj[:cost]

    delivery_price = find('.delivery-price')
    expect(delivery_price.text).to eql @product_obj[:delivery]
end

Then('The total cost must be {string}') do |total_cost|
    total_price = find('.total-price')
    expect(total_price.text).to eql total_cost
end

Then('The User sees a popup for unavailable product') do
    expected_popup_message = 'Produto indisponível'
    popup_warning = find('[role="dialog"]')
    expect(popup_warning.text).to include(expected_popup_message)
end