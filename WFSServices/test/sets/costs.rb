module Contexts
    module Costs
      def create_costs
        @cost1 = FactoryBot.create(:cost, service_type: @grouptherapylevel1)
        @cost2 = FactoryBot.create(:cost, unit_cost: 15, service_type: @grouptherapylevel2)  
      end
      
      def destroy_costs
        @cost1.delete
        @cost2.delete
      end
    end
end
  