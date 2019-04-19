module Contexts
    module Services
      def create_services
        @grouptherapy = FactoryBot.create(:service, name:"Group Therapy", category: @autism, level_of_care:"3", array_of_services: "Adult", microenterprise: "Older Adult Services")
        @beekind = FactoryBot.create(:service, category: @justice)  
      end

      def destroy_services
        @grouptherapy.destroy 
        @beekind.destroy
      end
      
    end
end
  