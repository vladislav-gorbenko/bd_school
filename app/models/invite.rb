class Invite < ActiveRecord::Base
  belongs_to :person
  belongs_to :event

  validates :name, :city,:presence => true
end
