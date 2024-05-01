
class HomePage
    include Capybara::DSL

    def open
        visit 'https://starbugs.vercel.app'
    end

    def coffee_list
        return all('.coffee-item')
    end

    def buy_coffee(name)
        product = find('.coffee-item', text: name)
        product.find('.buy-coffee').click
    end
end