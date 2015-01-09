class Visitor < ActiveRecord::Base
    belongs_to :activity
    has_many :results
end
