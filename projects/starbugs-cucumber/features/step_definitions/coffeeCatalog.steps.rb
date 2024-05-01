When('The User access the main page of StarBugs') do
    visit 'https://starbugs.vercel.app'
end

Then('The User should see the available coffee options') do
    coffees = all('.coffee-item')
    expect(coffees.size).to be > 0
end