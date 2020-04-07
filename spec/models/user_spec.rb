require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(first_name: "Joe",
                        last_name: "Lee", 
                        email: "test@test.com", 
                        password: "123456", 
                        password_confirmation: "123456")
  }
  # describe 'Validations' do
    # it "is valid when password and password-confirmation match" do
    #   expect(subject.password).to eq(subject.password_confirmation)
    # end
    # it "is not valid when password and password-confirmation do not match" do
    #   subject.password_confirmation = "1234566"
    #   expect(subject.password).to_not eq(subject.password_confirmation)
    # end
    # it "is not valid with password and password-confirmation not present" do
    #   subject.password_confirmation = nil
    #   expect(subject).to_not be_valid
    # end
    # it "is not valid when TEST@TEST.com" do
    #   subject.email = "TEST@TEST.com";
    #   expect(subject).to_not eq("test@test.COM")
    ### ? expect(subject.email).to_not eq("test@test.COM")
    # end
#     it { should validate_uniqueness_of(:email).on(:create) }
#     it "is valid if email, first_name, last_name are present" do
#       subject.email = nil
#       subject.first_name = nil
#       subject.last_name = nil
#       expect(subject).to_not be_valid
#     end
#     it "is valid if password length is more then 6 characters" do
#       expect(subject.password.length.on(:create)).to be >= 6
#     end    
  # end

  describe '.authenticate_with_credentials' do
    # let(:result) { @user = User.authenticate_with_credentials(subject.email, subject.password)}
    it "returns nil if user not found" do
      expect(User.authenticate_with_credentials("test@test.com", "12345")).to eq(nil)
    end
    it "returns user if user found" do
      # user = User.authenticate_with_credentials("test@test.com", "123456")
      p subject
      expect(User.authenticate_with_credentials("test@test.com", "123456")).to eq(subject)
    end
    # it "is valid if email when ' example@domain.com '" do
    # # #   subject.email = " TEST@test.com "
    # #   # expect(@user).to eq(@user)
    # end 
  end

end
