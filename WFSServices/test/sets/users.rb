module Contexts
    module Users
      def create_users
        @admin = FactoryBot.create(:user)
        @staff = FactoryBot.create(:user, username:"jellybelly", role:"company_staff", group_string:"workers")
        @owner = FactoryBot.create(:user, username:"goat", role:"service_owner", group_string:"boss") 
      end

      def destroy_users
        @admin.destroy
        @staff.destroy
        @owner.destroy
      end
      
    end
end
  