# frozen_string_literal: true

FactoryBot.define do
  factory :hobby do
    name { Faker::Verb.ing_form }
  end
end
