module Contexts
    module Categories
      def create_services
        @autism = FactoryBot.create(:category)
        @justice = FactoryBot.create(:category, name:"Justice and Child Welfare")  
      end
      
      def destroy_services
        @autism.delete
        @justice.delete
      end
    end
end
  