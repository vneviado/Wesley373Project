module Contexts
    module Services
      def create_services
        @beekind = FactoryBot.create(:service, category: @justice)
        @grouptherapy = FactoryBot.create(:service, name:"Group Therapy")  
      end
      
      def destroy_services
        @beekind.delete
        @grouptherapy.delete
      end
    end
end
  