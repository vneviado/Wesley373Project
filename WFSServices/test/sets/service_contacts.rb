module Contexts
    module ServiceContacts

      def create_service_contacts
        @service_person1 = FactoryBot.create(:service_contact, service: @beekind, contact: @john)
        @service_person2 = FactoryBot.create(:service_contact, service: @grouptherapy, contact: @john)
        @service_person3 = FactoryBot.create(:service_contact, service: @grouptherapy, contact: @tom)
        
      end
      
      def destroy_service_locations
        @service_person1.delete
        @service_person2.delete
        @service_person3.delete
      end
    end
end
  