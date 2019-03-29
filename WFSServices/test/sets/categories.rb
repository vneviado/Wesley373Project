module Contexts
    module Categories
      def create_categories
        @justice = FactoryBot.create(:category, name:"Justice and Child Welfare")  
        @autism = FactoryBot.create(:category)
      end
      
      def destroy_categories
        @justice.delete
        @autism.delete
      end
    end
end
  