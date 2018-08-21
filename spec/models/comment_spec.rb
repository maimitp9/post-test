require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Activerecord Association' do 
    let(:comment) { create(:comment) }
    it { expect(comment).to belong_to(:post) }
  end
end

