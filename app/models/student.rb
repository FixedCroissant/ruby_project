class Student < ApplicationRecord

  validates :studentID, presence: true,
            length: {maximum: 9 }
end
