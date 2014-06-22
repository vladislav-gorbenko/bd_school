class Invite < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :name, :city,:presence => true
end
