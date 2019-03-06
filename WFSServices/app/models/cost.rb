class Cost < ApplicationRecord
  #Relationships
  belongs_to :service

  #Validations

  ## We don't really know what needs to be validated yet as this model varies greatly per service,
  ## so for now, I will not validate the presence of anything

  #Scopes
  #Methods
end
