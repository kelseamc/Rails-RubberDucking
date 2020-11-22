class Student < ApplicationRecord
    has_many :ducks

    validates_presence_of :name, :mod
    validates :mod, inclusion: { in: (1..5), message: "must be 1-5"}


end
