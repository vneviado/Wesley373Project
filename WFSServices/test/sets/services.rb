module Contexts
    module Services
      def create_services
        @grouptherapy = FactoryBot.create(:service, name:"Group Therapy", category: @autism)
        @beekind = FactoryBot.create(:service, category: @justice)  
      end
      
      def destroy_services
        @grouptherapy.delete
        @beekind.delete
      end
    end
end
  