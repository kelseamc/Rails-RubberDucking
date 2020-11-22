class Duck < ApplicationRecord
    belongs_to :student

    validates_presence_of :name, :description
end
