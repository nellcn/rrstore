class Order < ActiveRecord::Base

  belongs_to :user

  validates :order_id, presence: true
  validates :user_id, presence: true
  validates :prod_id, presence: true
  validates :prod_count, presence: true

end
