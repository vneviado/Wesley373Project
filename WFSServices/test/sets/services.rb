module Contexts
    module Services
      def create_services
        @beekind = FactoryBot.create(:service, category: @justice, location: @wilkinsburg, contact: @tom)
        @grouptherapy = FactoryBot.create(:service, name:"Group Therapy", category: @autism, location: @beta, contact: @john)  
      end
      
      def destroy_services
        @beekind.delete
        @grouptherapy.delete
      end
    end
end
  