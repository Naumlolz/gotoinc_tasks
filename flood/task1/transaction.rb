# frozen_string_literal: true

# Класс для представления транзакций
class Transaction
  attr_reader :timestamp, :id, :user_id, :amount

  def initialize(params)
    @timestamp = params[:timestamp]
    @id = params[:id]
    @user_id = params[:user_id]
    @amount = params[:amount].to_f
  end

  def < (other)
    other.amount < amount
  end
end
