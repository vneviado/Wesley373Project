# require needed files
require './test/sets/categories'
require './test/sets/contacts'
require './test/sets/locations'
require './test/sets/service_types'
require './test/sets/services'
require './test/sets/costs'

module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Categories
  include Contexts::Contacts
  include Contexts::Locations
  include Contexts::ServiceTypes
  include Contexts::Services
  include Contexts::Costs

  # a build_all method to quickly create a full testing context
  def build_all
    create_categories
    puts "Built categories"
    create_contacts
    puts "Built contacts"
    create_locations
    puts "Built locations"
    create_services
    puts "Built services"
    create_costs
    puts "Built costs"
    create_service_types
    puts "Built service types"
  end

  # a destroy_all method to quickly destroy the testing context
  def destroy_all
    destroy_services
    puts "Destroyed services"
    destroy_service_types
    puts "Destroyed service types"
    destroy_locations
    puts "Destroyed locations"
    destroy_contacts
    puts "Destroyed contacts"
    destroy_categories
    puts "Destroyed categories"
  end
end
