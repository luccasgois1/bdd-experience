
class CheckoutPage
    include Capybara::DSL

    def total_price
        return find('.total-price').text
    end

    def product_title
        return find('.item-details h1').text
    end

    def product_sub_cost
        return find('.subtotal .sub-price').text
    end

    def product_delivery_price
        return find('.delivery-price').text
    end
end