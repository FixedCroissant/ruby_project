class Studentgrade < ApplicationRecord
    belongs_to :student

    #active admin customization.
    accepts_nested_attributes_for :student, :allow_destroy => false

end
