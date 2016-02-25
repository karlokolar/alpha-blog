class Category < ActiveRecord::Base

  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, presence: true, length: {in: 4..24}
  validates_uniqueness_of :name

end