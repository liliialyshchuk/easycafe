class CategoriesController < InheritedResources::Base
  # before_action :require_admin, except: [:index, :show]


  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new 
    @category = Category.new
  end

  def edit
      @category = Category.find(params[:id])
  end

  def create 
    @category = Category.new(category_params)

    respond_to do |format|
        if @category.save
          format.html { redirect_to category_url(@category), notice: "Category was successfully created." }
          format.json { render :show, status: :created, location: @category }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @category.errors, status: :unprocessable_entity }
        end
    end
  end

def update
    @category = Category.find(params[:id])

    respond_to do |format|
        if @category.update(category_params)
            format.html { redirect_to category_url(@category), notice: "category was successfully updated." }
            format.json { render :show, status: :ok, location: @category }
        else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @category.errors, status: :unprocessable_entity }
        end
    end
  end

def destroy
    @category = Category.find(params[:id])
    @category.destroy!

    respond_to do |format|
        format.html { redirect_to categories_url, notice: "Category was successfully destroyed." }
        format.json { head :no_content }
    end
  end


  private

    def category_params
      params.require(:category).permit(:name)
    end

    def require_admin
      if !(logged_in? && current_user.admin?)
        flash[:alert] = "Only admins can perform that action"
        redirect_to categories_path
      end
    end

end
