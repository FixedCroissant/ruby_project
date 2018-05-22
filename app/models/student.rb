class Student < ApplicationRecord
  has_many :studentgrade

  validates :studentID, presence: true,
            length: {maximum: 9 }

  validates :fName, presence:true
  validates :lName, presence:true


            #Adjust labels per rail admin.
            rails_admin do
              configure :studentID do
                label 'Student ID: '
              end
              configure :fName do
                label 'First: '
              end
              configure :lName do
                label 'Last: '
              end
              configure :schoolType do
                label 'Type of School: '
              end
            end

            def schoolType_enum
              # Do not select any value, or add any blank field. RailsAdmin will do it for you.
              ['Public', 'Private']
            end

            
end
