require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

  #SET UP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end
  
  scenario "The cart number increases by one when one product is added to the cart" do 

    #ACTION
    visit root_path
    #VERIFY
    save_screenshot
    expect(page).to have_text 'My Cart (0)'
    
    #ACTION
    find('.add', match: :first).click
    #VERIFY
    sleep(1)
    save_screenshot
    expect(page).to have_text 'My Cart (1)'
  end
end
