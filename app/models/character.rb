class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    #self.actor already works due to macro

    #self.show already works too

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end