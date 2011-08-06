class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Member.new # guest user (not logged in)
      if user.admin?  #Админ имеет полный доступ к сайту
        can :manage, :all
      else #Менеджер имеет доступ к ограниченному числу контроллеров
        can :manage, Request
        can :manage, Driver
        can :manage, Car
        can :manage, CarrierCompany
        can :manage, CustomerCompany
        cannot :destroy, Request
        cannot :destroy, Driver
        cannot :destroy, Car
        cannot :destroy, CarrierCompany
        cannot :destroy, CustomerCompany
      end

    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
