class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]


  def dashboard
    @tasks = Task.where(company: current_user.company)
    @utilities = utilities
    @cashflow = cash_flow
    @area = area
    @rent = rent
  end

  private

  def rent
    rent = 0
    current_user.company.contracts.each do |contract|
      rent += contract.monthly_rent
    end
    return rent
  end

  def area
    area = 0
    Flat.where(company: current_user.company).each do |flat|
      area += flat.area
    end
    return area
  end

  def utilities
    utilities = 0
    category = TransactionCategory.find_by_name("utilities")
    Transaction.where(company: current_user.company).each do |transaction|
      utilities += transaction.amount if transaction.category == category
    end
    return utilities
  end

  def cash_flow
    cash = 0
    Transaction.where(company: current_user.company).each do |transaction|
      transaction.is_expense ? cash -= transaction.amount : cash += transaction.amount
    end
    return cash
  end
end
