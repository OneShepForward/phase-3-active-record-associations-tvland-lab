class Network < ActiveRecord::Base
  

    def shows
        Show.all.where("network_id = ?", self.id)
    end

    def sorry
        "We're sorry about passing on John Mulaney's pilot"
    end
end
