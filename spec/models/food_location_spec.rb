# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FoodLocation, type: :model do
  context 'relationships' do
    subject do
      FactoryGirl.create :food_location, food: food, location: location
    end

    it 'belongs to a food' do
      expect(subject.food).to eq food
    end

    it 'belongs to a location' do
      expect(subject.location).to eq location
    end

    let(:food)     { FactoryGirl.create :food }
    let(:location) { FactoryGirl.create :location }
  end
end
