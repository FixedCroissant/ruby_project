class StudentsController < ApplicationController
    #Index
    def index
        # @students = Student.all()
        @students = Student.select('id','fName','lName').all()
        
        #get my user.
        @user = current_user
    end
    
    def new
        @student = Student.new
        render 'new'
    end
    
    def edit
        # @students = Student.all()
        @student = Student.find(params['id'])
        #drop down list
        #@dropdown = Student.new(classification: 2)
        #form_for
        # params[:variable][:param]
            
    end

    def show
        @student = Student.find(params['id'])     
    end

    def create
        # create new student
        # gotta call the function call student parameters.
         @student = Student.new(student_params)
         if @student.save
            # this goes to the "show" method with the correct parameter.
            # student_path goes to the show; without a correct parameter added.
            flash[:notice] = "Student record was successfully created."
            redirect_to  @student
          else
            render 'new'
          end
        # close if statement.        
    end


    def update
        @student = Student.find(params['id'])
        #updatelast name only.
        @student.fName = params['student']['fName'];
        @student.lName = params['student']['lName']        
        @student.classification =  params['classification']['classificationName']
        # save record
        @student.save
        flash[:notice] = "Student record was successfully updated."
        redirect_to action:"show", id:params['id']
        # redirect_to action:"show" , id: 1
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to :students
    end


    #ONLY NECESSARY WHEN DOING MASS ASSIGNMENTS.
    private 
        def student_params
            params.require(:student).permit(:studentID,:fName,:lName)
        end

end
