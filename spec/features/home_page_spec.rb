require 'rails_helper'

RSpec.feature "HomePages", type: :feature, js: true do

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
  xscenario "They see all products" do
    #ACTION
    visit root_path
    #VERIFY
    save_screenshot
    expect(page).to have_css 'article.product', count: 10
  end
end
