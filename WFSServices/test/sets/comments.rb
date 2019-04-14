module Contexts
    module Comments
      def create_comments
        @comment1 = FactoryBot.create(:comment, service: @beekind, content:"Instructor subject to change.")  
        @comment2 = FactoryBot.create(:comment, service: @beekind, content:"Location changed.", date_created: 2.day.ago.to_date)
      end
      
      def destroy_comments
        @comment2.delete
        @comment1.delete
      end
    end
end
  