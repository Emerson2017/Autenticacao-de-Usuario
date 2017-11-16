class Ability
  include CanCan::Ability

  def initialize(user)

      if user.admin?
         can :manage, :all

      elsif user.Setor = 'visitante'
          can :read, MuralAtividade
          can :read, Noticium
          can :read, MinhasAtividade
        

       else
         can :create, MinhasAtividade
         can :create, MinhasAtividade
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
