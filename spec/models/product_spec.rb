require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(name: "Name of product",
                        price: 1,
                        quantity: 1,
                        category: @category)
  }
  describe 'Validations' do
    it "is valid with valid attributes" do
      @category = Category.new
      subject.category(@category.id)
      expect(subject).to be_valid
    end
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a name" do
      subject.price = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a name" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a name" do
      subject.category = nil
      expect(subject).to_not be_valid
    end
    it "returns an error" do
      subject.valid?
      expect(subject.errors.full_messages).to include("Category can't be blank")
    end
  end
end
