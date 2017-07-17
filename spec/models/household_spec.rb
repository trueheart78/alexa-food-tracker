# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Household, type: :model do
  context 'relationships' do
    context 'types tags' do
      it 'has many' do
      end
    end

    context 'users' do
      it 'has many' do
      end
    end

    context 'location tags' do
      it 'has many' do
      end
    end

    context 'foods' do
      it 'has many' do
      end
    end
  end

  context 'scopes' do
    before do
      FactoryGirl.create :active_household
      FactoryGirl.create :inactive_household
    end

    context 'active' do
      it 'only includes active' do
        Household.active.each do |hh|
          expect(hh).to be_active
        end
      end
    end

    context 'inactive' do
      it 'only includes inactive' do
        Household.inactive.each do |hh|
          expect(hh).to_not be_active
        end
      end
    end
  end

  context 'validations' do
    subject { described_class.new }

    context 'name' do
      it 'name cannot be nil' do
        subject.name = nil
        subject.valid?

        expect(name_error).to eq blank_error
      end

      it 'name cannot be empty' do
        subject.name = ''
        subject.valid?

        expect(name_error).to eq blank_error
      end

      it 'can be anything else' do
        subject.name = junk

        expect(subject).to be_valid
      end

      let(:blank_error) { "can't be blank" }
      let(:name_error)  { subject.errors.messages[:name].first }
    end
  end
end
