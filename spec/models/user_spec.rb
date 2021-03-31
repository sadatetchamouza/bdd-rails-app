require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:books).dependent(:delete_all) }
end
