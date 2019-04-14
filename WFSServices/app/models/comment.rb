class Comment < ApplicationRecord
    # Relationships
    belongs_to :service

    # Validations
    validates_presence_of :service, :date_created, :content

    # Scope
    scope :chronological, -> { order( 'date_created' ) }

end
