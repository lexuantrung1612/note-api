require 'rails_helper'

RSpec.describe Note, type: :model do
  # =================  Data and Associations =======================
  # https://github.com/thoughtbot/shoulda-matchers/tree/master/lib/shoulda/matchers/active_record
  it { should belong_to(:user) }

  # ================== Validation Matchers ============================
  # https://github.com/thoughtbot/shoulda-matchers/tree/master/lib/shoulda/matchers/active_model
  context 'check null' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:alias_name) }
    it { should validate_presence_of(:group) }
  end
end
