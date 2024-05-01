
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

    def fill_zip_code(zip_code)
        find('input[name="cep"]').set(zip_code)
    end

    def click_search_zip_code()
        click_on 'Buscar CEP'
    end

    def fill_address_number(address_number)
        find('input[name="number"]').set(address_number)
    end

    def fill_address_complement(address_complement)
        find('input[name="complement"]').set(address_complement)
    end

    def click_payment_method(payment_type)
        find('label div', text:payment_type).click
    end

    def confirm_order()
        click_on 'Confirmar pedido'
    end
end