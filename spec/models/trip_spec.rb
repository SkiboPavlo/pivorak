require 'rails_helper'

describe Trip do
  let(:user) { User.create(email: "test@test.com", role: "buyer", name: 'test', username: "supertest") }
  let(:trip) {Trip.create(city_from: "Lviv", city_to: "Kyiv", departure: "05/19/2017",
                    arrival: "05/19/2017", tickets_count: "15", tickets_price: 150)}

  describe 'relations' do
    it { is_expected.to have_many(:tickets) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:city_from) }
    it { is_expected.to validate_presence_of(:city_to) }
    it { is_expected.to validate_presence_of(:tickets_count) }
    it { is_expected.to validate_presence_of(:departure) }
    it { is_expected.to validate_presence_of(:arrival) }
    it { is_expected.to validate_presence_of(:tickets_price) }
  end

  describe '.search' do
    it 'search by_city and by date' do
      expect(Trip.search('lviv', '05/19/2017')).to eq([trip])
    end
  end
end
