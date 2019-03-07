module Contexts
    module Categories
      def create_categories
        @autism = FactoryBot.create(:category)
        @justice = FactoryBot.create(:category, name:"Justice and Child Welfare")  
      end
      
      def destroy_categories
        @autism.delete
        @justice.delete
      end
    end
end
  