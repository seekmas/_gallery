class Field < ActiveRecord::Base

    belongs_to :activity
    has_one :result , :foreign_key => 'field_id'

end
