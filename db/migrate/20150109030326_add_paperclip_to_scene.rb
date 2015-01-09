class AddPaperclipToScene < ActiveRecord::Migration
    def self.up
        add_attachment :scenes, :photo
    end

    def self.down
        remove_attachment :scenes, :photo
    end
end
