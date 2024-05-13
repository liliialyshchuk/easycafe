class DishesController < ApplicationController
    before_action :require_admin, except: [:index, :show]

    def index_category
        @dishes_category = Dish.where(category_id: params[:id])
    end

    def index
        @dishes = Dish.all
    end
    
    def show
        @dish = Dish.find(params[:id])
    end

    def new
        @dish = Dish.new
    end

    def edit
        @dish = Dish.find(params[:id])
    end

    def create 
        @dish = Dish.new(dish_params)

        respond_to do |format|
            if @dish.save
              format.html { redirect_to dish_url(@dish), notice: "Dish was successfully created." }
              format.json { render :show, status: :created, location: @dish }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @dish.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @dish = Dish.find(params[:id])

        respond_to do |format|
            if @dish.update(dish_params)
                format.html { redirect_to dish_url(@dish), notice: "Dish was successfully updated." }
                format.json { render :show, status: :ok, location: @dish }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @dish.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @dish = Dish.find(params[:id])
        @dish.destroy!

        respond_to do |format|
            format.html { redirect_to dishes_url, notice: "Dish was successfully destroyed." }
            format.json { head :no_content }
        end
    end


private 

    def dish_params
      params.require(:dish).permit(:short_name, :description, :price, :dish_image, :category_id)
    end

    def require_admin
        if !(logged_in? && current_user.admin?)
          flash[:alert] = "Only admins can perform that action"
          redirect_to categories_path
        end
    end

end





