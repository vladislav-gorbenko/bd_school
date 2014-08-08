class Teg < ActiveRecord::Base
  belongs_to :person
  belongs_to :event

  validates :name,:presence => true
end
