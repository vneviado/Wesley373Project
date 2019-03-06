module Contexts
    module Locations
      def create_locations
        @beta = FactoryBot.create(:location)
        @wilkinsburg = FactoryBot.create(:location, name:"Wilkinsburg", phone_number:"(412)123-4577", street:"221 Penn Ave")  
      end
      
      def destroy_locations
        @beta.delete
        @wilkinsburg.delete
      end
    end
end
  