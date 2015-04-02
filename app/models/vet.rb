class Vet < ActiveRecord::Base

  validates :name, :presence => true
  validates :name, :length => { :maximum => 35 }
  validates :experience, :inclusion => { :in => 1..100 }
  validates :zip, :numericality => true
  validates :zip, :length => { :is => 5 }

  has_many :appointments
end
