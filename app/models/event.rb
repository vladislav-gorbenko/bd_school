class Event < ActiveRecord::Base
  has_many :invites
  has_many :tegs
  has_many :users, :through => :invites

  validates :name, :type_action, :city, :date_action,:presence => true
end
