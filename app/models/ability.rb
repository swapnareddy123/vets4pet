class Ability
  include CanCan::Ability
  
  def initialize(user)
       user ||= User.new # guest user
       if user.role == 'admin'
         can :manage, :all
       elsif user.role == 'receptionist'
         can :manage, [Customer, Appointment]
       elsif user.role == 'vet'
         can :manage, [Pet]
         can :read, [Appointment]
       elsif user.role == 'customer'
         can :read, [Appointment]
       else
         can :read, :all
       end

  end
end