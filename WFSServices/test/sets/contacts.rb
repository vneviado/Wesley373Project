module Contexts
    module Contacts
      def create_contacts
        @john = FactoryBot.create(:contact)
        @tom = FactoryBot.create(:contact, first_name:"tom")  
      end
      
      def destroy_contacts
        @john.delete
        @tom.delete
      end
    end
end
  