
class Popup
    include Capybara::DSL

    def text
        return find('[role="dialog"]').text
    end
end