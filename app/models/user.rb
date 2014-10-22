class User < ActiveRecord::Base
  has_many :purchases, foreign_key: :purchaser_id
  has_many :shirts
  has_many :designed_shirts, class_name: "Shirt", foreign_key: :designer_id
  has_many :purchased_shirts, through: :purchases, source: :shirt
  has_many :sales, through: :designed_shirts, source: :sales
  has_many :clients, through: :designed_shirts, source: :purchasers
  has_many :supported_designers, through: :purchased_shirts, source: :designer
end
