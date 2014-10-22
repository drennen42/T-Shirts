class Shirt < ActiveRecord::Base
  belongs_to :designer, class_name: "User", foreign_key: :designer_id
  has_many :purchases
  has_many :purchasers, through: :purchases, source: :purchaser
  has_many :sales, class_name: "Purchase"

end
