
class ConfirmOrderPage
    include Capybara::DSL

    def title
        return find('h1').text
    end

    def subtitle
        return find('p[color="subtitle"]').text
    end
    
    def delivery_time
        return find('p', text: 'Previsão de entrega').find('strong').text
    end
end