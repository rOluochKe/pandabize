require 'rails_helper'

RSpec.describe Bicycle, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:image_url) }
  end
end
