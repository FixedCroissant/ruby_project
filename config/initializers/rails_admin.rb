RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  config.show_gravatar = false

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    #delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  ##EXCLUDED MODELS.
  config.included_models = ["Student","Studentgrade","Role","User"]

  ##Adjust field labels.
  config.model 'Student' do
      list do
            field :lName  do
                label "Last"
            end
            field :fName  do
              label "First"
            end
            field :studentID do
              label "Student ID"
            end
        end #endlist
  end #endmodel
  
  config.model 'Studentgrade' do
              label "Grade"
              label_plural "Grades"
        list do
             field :studentID do 
                   label 'Student ID'
            end
        end   
  end

  config.model 'Role' do
        list do
              field :name do
                  label 'Role'
              end
        end
  end

  config.model 'Student' do
      # edit do
      #   #schoolType
      #   field :schoolType do
      #       partial 'school_type_partial'
      #   end
      # end
  end
end
