require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

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
  scenario "They see product details page" do
    #ACTION
    visit root_path
    find('.details', match: :first).click
    #VERIFY
    sleep(1)
    save_screenshot
    expect(page).to have_css 'article.product-detail', count: 1
  end
end
