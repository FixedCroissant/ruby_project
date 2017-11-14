class Ability
  include CanCan::Ability

    def initialize(user)
       if user.has_role? :Administrator
           can :manage,:all
           #can :manage, Article, roles: { id: user.role_ids }
       else
           can :read, Article
       end
    end
end
