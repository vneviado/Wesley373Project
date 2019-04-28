class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
        # can do everything
        can :manage, :all 

    elsif user.company_staff?
        # read their personal info (own profile)
        # cannot view info about other studs and fams
        can :manage, User do |u|  
            u.id == user.id
        end

        can :manage, Comment
        can :read, Service
        can :read, Location
        can :read, Contact
        can :show, Service
        can :show, Location
        can :show, Contact

    elsif user.service_owner?

        can :manage, Service do |s|
            users_in_service = user.services
            users_in_service.include? s.id
        end

        can :manage, ServiceType do |st|
            user.services.include? st.service.id
        end

        can :manage, ServiceLocation do |sl|
            user.services.include? sl.service.id
        end

        can :manage, ServiceContact do |sc|
            user.services.include? sc.service.id
        end

        can :manage, Comment

        can :manage, User do |u|  
            u.id == user.id
        end

        can :read, Service
        can :read, Location
        can :read, Contact
        can :show, Service
        can :show, Location
        can :show, Contact

    else 
        # if user is a guest
        # can read and see information
        can :read, Location
        can :read, Contact
        can :read, Service
        can :show, Service
        can :show, Location
        can :show, Contact
    end
  end
end
