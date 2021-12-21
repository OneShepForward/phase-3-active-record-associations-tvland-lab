class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  #characters and network done with macros

  def actors_list
    array = self.characters.map do |char_inst|
      Actor.find(char_inst.actor_id).full_name
    end
    # or, for no repeats:
    # array.uniq
  end
end