module Contexts
    module ServiceLocations

      def create_service_locations
        @service_loc1 = FactoryBot.create(:service_location, service: @beekind, location: @beta)
        @service_loc2 = FactoryBot.create(:service_location, service: @grouptherapy, location: @beta)
        @service_loc3 = FactoryBot.create(:service_location, service: @grouptherapy, location: @wilkinsburg)
        
      end
      
      def destroy_service_locations
        @service_loc1.delete
        @service_loc2.delete
        @service_loc3.delete
      end
    end
end
  