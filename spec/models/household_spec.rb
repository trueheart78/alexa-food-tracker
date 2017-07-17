# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Household, type: :model do
  context 'relationships' do
    it 'has many type tags' do
    end

    it 'has many users' do

    end

    it 'has many location tags' do

    end

    it 'has many foods' do

    end
  end

  context 'default scope' do
    it 'does not include inactive' do

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
