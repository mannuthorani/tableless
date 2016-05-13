class FeedbacksController < ApplicationController
 
def new
    @feedback = Feedback.new
end
 
def create
    @feedback = Feedback.new(feedback_params)
    respond_to do |format|
        if @feedback.save
            format.html { redirect_to success_path, notice: 'Feedback was successfully submited.' }
        else
            format.html { render :new }
        end
    end
 end
 
 def success
 end
 
private
 
   def feedback_params
     params.require(:feedback).permit(:name, :email, :address, :message, :suggestion)
   end
 
end