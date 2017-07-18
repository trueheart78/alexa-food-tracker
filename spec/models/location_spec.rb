# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'relationships' do
    subject { FactoryGirl.create :location, household: household }

    context 'household' do
      it 'belongs to a household' do
        expect(subject.household).to eq household
      end
    end

    context 'food' do
      before do
        2.times { FactoryGirl.create :food_location, location: subject }
      end

      it 'has many food locations' do
        expect(subject.food_locations.size).to eq 2
      end

      it 'has many foods through food locations' do
        expect(subject.food.size).to eq 2
      end
    end

    let(:household) { FactoryGirl.create :household }
  end

  context 'validation' do
    subject { FactoryGirl.create :location }

    context 'name' do
      it 'cannot be nil' do
        subject.name = nil
        expect(subject).to_not be_valid
      end

      it 'cannot be empty' do
        subject.name = ''
        expect(subject).to_not be_valid
      end
    end

    context 'description' do
      it 'cannot be nil' do
        subject.name = nil
        expect(subject).to_not be_valid
      end

      it 'cannot be empty' do
        subject.name = ''
        expect(subject).to_not be_valid
      end
    end
  end
end
