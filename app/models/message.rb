class Message < ActiveRecord::Base
  # presence: true => 必須入力
  validates :name, length: {maximum: 20}, presence: true
  validates :body, length: {minimum: 2, maximum: 30 }, presence: true
  validates :age,  numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_blank: true, presence: false

  def get_age
    self.age ? self.age  : "年齢不詳"
  end
end
