module Contexts
    module Users
      def create_users
        @admin = FactoryBot.create(:user)
        @staff = FactoryBot.create(:user, username:"jellybelly", email:"jelly@belly.com", role:"company_staff", group_string:"workers", service: @beekind)
        @owner = FactoryBot.create(:user, username:"goat", email:"goat@farm.com", role:"service_owner", group_string:"boss", service: @beekind) 
      end

      def destroy_users
        @admin.destroy
        @staff.destroy
        @owner.destroy
      end
      
    end
end
  