class Person < ActiveRecord::Base
  has_many :invites
  has_many :tegs
  has_many :events, :through => :invites

  validates :name, :presence => true #:role, :city, :presence => true
  # validates :name, :email, uniqueness: true, :allow_blank => true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, :allow_blank => true
  # validates_presence_of :phone_number, :unless => :email?
  # validates :password, length: 6..20, :allow_blank => true


def age birthday
  now = Time.now.utc.to_date
  now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
end
end
