require 'rails_helper'

RSpec.describe Book, type: :model do
it { should belong_to(:user) }
it { should have_db_column(:name).of_type(:string) }
#it { is_expected.to have_db_column(:author).of_type(:string) }
#it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
#it { is_expected.to have_db_column(:update_at).of_type(:datetime) }
end
