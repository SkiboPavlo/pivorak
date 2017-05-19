require 'rails_helper'

describe User do
  let(:user) { User.create(email: "test@test.com", role: "buyer", name: 'test', username: "supertest") }


  describe 'relations' do
    it { is_expected.to have_many(:user_provider) }
    it { is_expected.to have_many(:tickets) }
  end

  describe 'admin?' do
    context 'user role is eq to admin' do
      it 'return true' do
        user.role = "admin"
        expect(user.admin?).to be true
      end

      it 'return false' do
        expect(user.admin?).to be false
      end
    end
  end
end
