require 'rails_helper'

RSpec.describe Book, type: :model do
it { should belong_to(:user) }
it { should have_db_column(:name).of_type(:string) }
it { should have_db_column(:author).of_type(:string) }
it { should have_db_column(:created_at).of_type(:datetime) }
it { should have_db_column(:updated_at).of_type(:datetime) }
end
