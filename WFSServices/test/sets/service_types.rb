module Contexts
    module ServiceTypes
      def create_service_types
        @beekind = FactoryBot.create(:service)
        @grouptherapy = FactoryBot.create(:service, name:"Group Therapy")  
      end
      
      def destroy_services
        @beekind.delete
        @grouptherapy.delete
      end
    end
end
  