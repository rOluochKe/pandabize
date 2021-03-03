require 'rails_helper'

RSpec.describe Bicycle, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:image_url) }
    it { is_expected.to validate_presence_of(:user_id) }
  end

  context 'validations user id uniqueness' do
    it { should validate_uniqueness_of(:user_id) }
  end
end
