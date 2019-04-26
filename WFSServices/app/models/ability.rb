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
            users_in_service = s.users.map{|u| u.id}
            users_in_service.include? user.id
        end

        can :manage, ServiceType do |st|
            users_in_service_type = st.service.users.map{|u| u.id}
            users_in_service_type.include? user.id
        end

        can :manage, ServiceLocation do |sl|
            users_in_service_location = sl.service.users.map{|u| u.id}
            users_in_service_location.include? user.id
        end

        can :manage, ServiceContact do |sc|
            users_in_service_contact= sc.service.users.map{|u| u.id}
            users_in_service_contact.include? user.id
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
        # can read info on camps and curriculums
        can :read, Location
        can :read, Contact
        can :read, Service
    end
  end
end
