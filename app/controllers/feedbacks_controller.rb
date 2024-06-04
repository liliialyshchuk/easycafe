class FeedbacksController < ApplicationController
    before_action :require_user

    def index
        @feedbacks = Feedback.all 
    end
    
    def show
        @feedback = Feedback.find(params[:id])
    end

    def new
        @feedback = Feedback.new
    end

    def edit
        @feedback = Feedback.find(params[:id])
    end

    def create 
        @feedback = Feedback.create(feedback_params)

        respond_to do |format|
            if @feedback.save
              format.html { redirect_to dishes_path, notice: "Feedback was successfully created." }
              format.json { render :show, status: :created, location: @feedback }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @feedback.errors, status: :unprocessable_entity }
            end
        end
    end

    # def update
    #     @feedback = Feedback.find(params[:id])

    #     respond_to do |format|
    #         if @feedback.update(feedback_params)
    #             format.html { redirect_to feedback_url(@feedback), notice: "Feedback was successfully updated." }
    #             format.json { render :show, status: :ok, location: @feedback }
    #         else
    #             format.html { render :edit, status: :unprocessable_entity }
    #             format.json { render json: @feedback.errors, status: :unprocessable_entity }
    #         end
    #     end
    # end

    # def destroy
    #     @feedback = Feedback.find(params[:id])
    #     @feedback.destroy!

    #     respond_to do |format|
    #         format.html { redirect_to feedbacks_url, notice: "Feedback was successfully destroyed." }
    #         format.json { head :no_content }
    #     end
    # end


private 

    def feedback_params
      params.require(:feedback).permit(:comment, :rating, :dish_id).merge(user_id: current_user.id)
    end

    def require_user
        if !user_signed_in?
          flash[:alert] = "Only registered users can perform that action"
          redirect_to feedbacks_path
        end
    end
end
