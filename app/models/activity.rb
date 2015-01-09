class Activity < ActiveRecord::Base

    has_many :scenes
    has_many :fields
    has_many :results
    has_many :visitors

end
