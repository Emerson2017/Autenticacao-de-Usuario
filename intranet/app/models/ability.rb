class Ability
  include CanCan::Ability

  def initialize(user)
      if user.admin?
         can :manage, :all
       else
         can :manage, :minhas_atividades
       end

  end
end
