class Pet < ActiveRecord::Base


  TYPES_OF_PETS = ['Dog', 'Cat', 'Bird']

  belongs_to :customer

  validates :name, :category, :breed, :age, :weight, :last_visit , :presence => true
  validates_length_of :name, :in =>4..35

  validates_inclusion_of :category, :in => TYPES_OF_PETS
end
