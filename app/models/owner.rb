class Owner < ApplicationRecord
    has_many :dogs

    def get_walks
        self.dogs.map do |dog|
            dog.walks
        end
    end
end
