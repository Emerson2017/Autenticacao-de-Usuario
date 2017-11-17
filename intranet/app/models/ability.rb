class Ability
  include CanCan::Ability

  def initialize(user)

      if user.Setor == "Administrador" or user.admin?
         can :manage, :all

      elsif user.Setor == "Visitante"
          can :read, MuralAtividade
          can :read, Noticium
          cannot :access, :MinhasAtividade
          can :read, Noticium

      elsif user.Setor == "Colaborador"
        can :create, Noticium
        can :update, Noticium
        can :read, Noticium
          

      elsif user.Setor == "RH" or "Técnico" or  "Financeiro" or "Diretoria" or "Comercial"
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
