class Transaction < ApplicationRecord
  belongs_to :flat
  belongs_to :category, class_name: "TransactionCategory"
  belongs_to :company

  validates :amount_cents, presence: true, numericality: { greater_than: 0 }
  validates :date, presence: true
  validates_inclusion_of :is_expense, in: [true, false]

  monetize :amount_cents
end
