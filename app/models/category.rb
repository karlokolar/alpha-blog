class Category < ActiveRecord::Base

  validates :name, presence: true, length: {in: 4..24}
  validates_uniqueness_of :name

end