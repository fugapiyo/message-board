class Message < ActiveRecord::Base
  # presence: true => 必須入力
  validates :name, length: {maximum: 20}, presence: true
  validates :body, length: {minimum: 2, maximum: 30 }, presence: true
end
