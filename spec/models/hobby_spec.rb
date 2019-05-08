# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Hobby, type: :model do
  subject(:hobby) { build(:hobby) }
  it 'is valid' do
    expect(hobby).to be_valid
  end

  it 'it has name' do
    expect(hobby.name).not_to be_empty
  end

  context 'empty hobby' do
    before { hobby.name = nil }
    it 'is invalid' do
      expect(hobby).to be_invalid
    end

    it 'it has no name' do
      expect(hobby.name).to eq(nil)
    end
  end
end
