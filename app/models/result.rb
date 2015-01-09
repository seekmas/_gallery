class Result < ActiveRecord::Base

    belongs_to :activity
    has_one :field
    has_one :visitor , :foreign_key => :activity_id
    
end
