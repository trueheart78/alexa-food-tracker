# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Type, type: :model do
  context 'relationships' do
    subject { FactoryGirl.create :type, household: household }

    context 'household' do
      it 'belongs to a household' do
        expect(subject.household).to eq household
      end
    end

    context 'food' do
      before do
        2.times { FactoryGirl.create :food_type, type: subject }
      end

      it 'has many food types' do
        expect(subject.food_types.size).to eq 2
      end

      it 'has many foods through food types' do
        expect(subject.food.size).to eq 2
      end
    end

    let(:household) { FactoryGirl.create :household }
  end

  context 'validation' do
    subject { FactoryGirl.create :type }

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
  end
end
