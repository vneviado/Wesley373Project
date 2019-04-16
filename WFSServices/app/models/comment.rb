class Comment < ApplicationRecord
    # Relationships
    belongs_to :service

    # Validations
    validates_presence_of :service, :date_created, :content

    # Scope
    scope :chronological, -> { order( 'date_created' ) }

    # Callback
    before_create :set_date_to_current_date

    private
    def set_date_to_current_date
        self.date = Date.current
    end

end
