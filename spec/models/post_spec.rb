require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validate factory' do
    let(:post) { create(:post) }

    it 'is valid factory with valid attributes' do
      expect(post).to be_valid
    end
  end

  it 'title should not nil'
end
