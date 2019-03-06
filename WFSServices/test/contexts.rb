# require needed files
require './test/sets/categories'
require './test/sets/contacts'
require './test/sets/locations'
require './test/sets/service_types'
require './test/sets/services'

module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Categories
  include Contexts::Contacts
  include Contexts::Locations
  include Contexts::Service_types
  include Contexts::Services

  # a build_all method to quickly create a full testing context
  def build_all
    create_categories
    create_contacts
    create_locations
    create_service_types
    create_services
  end

  # a destroy_all method to quickly destroy the testing context
  def destroy_all
    destroy_services
    destroy_service_types
    destroy_locations
    destroy_contacts
    destroy_categories
  end
end
