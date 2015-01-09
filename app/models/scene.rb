class Scene < ActiveRecord::Base
    
    belongs_to :activity

    has_attached_file :photo,
                      :styles => { :medium => "800x600>", :thumb => "100x100>" }, :convert_options => {:medium => "-quality 100 -strip" }, :default_url => "/images/:style/missing.png"

    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
