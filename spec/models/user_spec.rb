# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'relationships' do
    subject { FactoryGirl.create :user, household: household }

    it 'belongs to a household' do
      expect(subject.household).to eq household
    end

    let(:household) { FactoryGirl.create :household }
  end

  context 'scopes' do
    before do
      FactoryGirl.create :active_user
      FactoryGirl.create :inactive_user
    end

    context 'active' do
      it 'only includes active' do
        described_class.active.each do |u|
          expect(u).to be_active
        end
      end
    end

    context 'inactive' do
      it 'only includes inactive' do
        described_class.inactive.each do |u|
          expect(u).to_not be_active
        end
      end
    end
  end

  context 'validation' do
    subject { FactoryGirl.create :user }

    context 'email' do
      it 'cannot be nil' do
        subject.email = nil
        expect(subject).to_not be_valid
      end

      it 'cannot be empty' do
        subject.email = ''
        expect(subject).to_not be_valid
      end
    end

    context 'password' do
      it 'cannot be nil' do
        subject.password = nil
        expect(subject).to_not be_valid
      end

      it 'cannot be empty' do
        subject.password = ''
        expect(subject).to_not be_valid
      end

      it 'cannot be less than 8 characters' do
        subject.password = short_password
        expect(subject).to_not be_valid
      end

      it 'must be at least 8 characters' do
        subject.password = good_password
        expect(subject).to be_valid
      end

      let(:short_password) { 'a' * 7 }
      let(:good_password)  { 'a' * 8 }
    end
  end
end
