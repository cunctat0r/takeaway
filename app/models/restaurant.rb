# frozen_string_literal: true

# Restaurant model
class Restaurant < ApplicationRecord
  has_many :dishes
end
