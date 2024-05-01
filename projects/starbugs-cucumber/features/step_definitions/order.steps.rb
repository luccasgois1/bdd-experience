When('The User fills his address information:') do |table|
    @checkout.fill_zip_code(table.rows_hash[:zip_code])
    @checkout.click_search_zip_code
    @checkout.fill_address_number(table.rows_hash[:number])
    @checkout.fill_address_complement(table.rows_hash[:complement])
end

When('The User choose to pay with {string}') do |payment_type|
    @checkout.click_payment_method(payment_type)
end

When('The User confirms the order') do
    @checkout.confirm_order
end

Then('The User sees the confirmation page') do
    expect(@confirm_order.title).to eql 'Uhull! Pedido confirmado'
    expect(@confirm_order.subtitle).to eql 'Agora é só aguardar que logo o café chegará até você'
end

Then('The User sees that the delivery time is {string}') do |text_time|
    expect(@confirm_order.delivery_time).to eql text_time
end