require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'has a valid factory' do
    expect(build(:post)).to be_valid
  end

  describe 'Activerecord Validations' do
    let(:post) { build(:post, title: nil) }

    it 'is invalid without title' do
      expect(post).to validate_presence_of(:title)
    end

    it 'is invalid without title' do
      should validate_presence_of(:title)
    end
  end

  context 'formate validations' do
    let(:post) { build(:post) }

    it 'validates the formate of email' do
      expect(post).to allow_value(Faker::Internet.email).for(:email)
      expect(post).not_to allow_value('hhhd%$@#$%$%.com').for(:email)
    end

    it 'validtes the formate of email' do
      should allow_value(Faker::Internet.email).for(:email)
      should_not allow_value('hhhd%$@#$%$%.com').for(:email)
    end
  end

  describe 'Activerecord Association' do
    let(:post) { create(:post) }
    let(:comment) { create(:comment, post: post) }

    it { expect(post).to have_many(:comments)  }
  end

  describe 'Numericality and Lenght validation' do 
    let(:post) { build(:post) }

    it 'validates the numericality and length of phone_no' do
      expect(post).to validate_numericality_of(:phone_no)
      expect(post).to validate_length_of(:phone_no).is_at_least(9)
    end

    it 'validates the numericality  and length of phone_no' do
      should validate_numericality_of(:phone_no)
      should validate_length_of(:phone_no).is_at_least(9)
    end
  end

  describe 'length validation' do
  end
end
