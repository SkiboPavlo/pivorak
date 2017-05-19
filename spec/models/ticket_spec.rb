require 'rails_helper'

describe Ticket do

  describe 'relations' do
    it { is_expected.to belong_to(:trip) }
    it { is_expected.to belong_to(:user) }
  end
end
