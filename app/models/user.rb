class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  ROLES = %w[admin vet receptionist customer]

  def roles
    ROLES
  end

  def is?(role)
    roles.include?(role.to_s)
  end       
end
