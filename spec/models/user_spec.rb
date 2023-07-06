RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      user = User.new(firstname: 'John', lastname: 'Doe', email: 'test@test.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end

    it 'is not valid without a firstname' do
      user = User.new(firstname: nil, lastname: 'Doe', email: 'test@test.com', password: 'password', password_confirmation: 'password')
      expect(user).to_not be_valid
      expect(user.errors[:firstname]).to include("can't be blank")
    end

    it 'is not valid without a lastname' do
      user = User.new(firstname: 'John', lastname: nil, email: 'test@test.com', password: 'password', password_confirmation: 'password')
      expect(user).to_not be_valid
      expect(user.errors[:lastname]).to include("can't be blank")
    end

    it 'is not valid without an email' do
      user = User.new(firstname: 'John', lastname: 'Doe', email: nil, password: 'password', password_confirmation: 'password')
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is not valid if the email is already taken (not case sensitive)' do
      User.create!(firstname: 'John', lastname: 'Doe', email: 'test@test.com', password: 'password', password_confirmation: 'password')
      user = User.new(firstname: 'John', lastname: 'Doe', email: 'TEST@TEST.COM', password: 'password', password_confirmation: 'password')
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("has already been taken")
    end

    it 'is not valid if the password is less than 6 characters long' do
      user = User.new(firstname: 'John', lastname: 'Doe', email: 'test@test.com', password: 'short', password_confirmation: 'short')
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include('is too short (minimum is 6 characters)')
    end

    it 'is not valid with a password and password_confirmation that do not match' do
      user = User.new(firstname: 'John', lastname: 'Doe', email: 'test@test.com', password: 'password', password_confirmation: 'not_password')
      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
  end
  # describe '.authenticate_with_credentials' do
  #   # examples for this class method here
  # end
end
