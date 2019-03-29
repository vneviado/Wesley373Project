module Contexts
    module ServiceTypes

      def create_service_types
        @grouptherapylevel1 = FactoryBot.create(:service_type, service: @beekind, staff: "Volunteers")
        @grouptherapylevel2 = FactoryBot.create(:service_type, name:"Group Therapy", service: @grouptherapy)  
      end
      
      def destroy_service_types
        @grouptherapylevel1.destroy
        @grouptherapylevel2.destroy
      end
    end
end
  