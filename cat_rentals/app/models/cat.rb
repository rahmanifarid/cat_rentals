class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: ["M", "F"], message: "Please enter M or F" }
  validates :color, inclusion: {
    in: %w(white black yellow orange),
    message: "Enter a valid color!"
  }
end
