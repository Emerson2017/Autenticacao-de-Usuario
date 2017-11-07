class Ability
  include CanCan::Ability

  def initialize(user)

      if user.admin?
        
         can :manage, :all
         can :create, :User
       else

         can :destroy, MuralAtividade do |mural_atividades|
         	mural_atividades.user == user
         end

         can :edit, MuralAtividade do |mural_atividades|
         	mural_atividades.user == user
         end

         can :read, Noticium
       end

  end
end
