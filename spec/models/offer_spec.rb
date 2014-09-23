require 'rails_helper'

describe Offer do
  # Attributes

  context 'always' do
    it "has a title" do
      expect(build(:offer)).to respond_to :title
    end
    it 'has a mode' do
      expect(build(:offer)).to respond_to :mode
    end

    it 'has a salary' do
      expect(build(:offer)).to respond_to :salary
    end

    it 'has a description' do
      expect(build(:offer)).to respond_to :description
    end
  end

  # Validations

  it 'has a valid factory' do
    expect(build(:offer)).to be_valid
  end

  it 'has an invalid factory' do
    expect(build(:invalid_offer)).not_to be_valid
  end

  it 'has a company associated' do
    expect(build(:offer_with_company).company).not_to be_nil
  end

  # Associations

  it 'belongs to a company' do
    expect(build(:offer)).to belong_to :company
  end

  it 'has and belongs to many skills' do
    expect(build(:offer)).to have_and_belong_to_many :skills
  end

  # Methods
  it 'should respond to :human_node' do
    expect(build(:offer)).to respond_to :human_mode
  end

  context "when a human tries to read the mode" do
    it 'should return a string' do
      expect(build(:offer, mode: :full_time).human_mode).to be_instance_of(String)
    end

    context "and the mode is :part_time" do
      it 'should return "Part time"' do
        expect(build(:offer, mode: :part_time).human_mode).to eq('Part time')
      end
    end
  end
end
