require 'rails_helper'

RSpec.describe User, type: :model do
  # =================  Data and Associations =======================
  # https://github.com/thoughtbot/shoulda-matchers/tree/master/lib/shoulda/matchers/active_record
  it { should have_many(:notes) }

  # ================== Validation Matchers ============================
  # https://github.com/thoughtbot/shoulda-matchers/tree/master/lib/shoulda/matchers/active_model
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:name) }
end
