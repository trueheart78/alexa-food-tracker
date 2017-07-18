# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FoodType, type: :model do
  context 'relationships' do
    subject { FactoryGirl.create :food_type, food: food, type: type }

    it 'belongs to a food' do
      expect(subject.food).to eq food
    end

    it 'belongs to a type' do
      expect(subject.type).to eq type
    end

    let(:food) { FactoryGirl.create :food }
    let(:type) { FactoryGirl.create :type }
  end
end
