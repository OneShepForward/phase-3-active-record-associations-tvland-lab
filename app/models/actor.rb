class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    # macro already does characters and shows

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        chars = self.characters
        chars.map{|char_inst| "#{char_inst.name} - #{char_inst.show.name}"}
    end
end