# frozen_string_literal: true

module Admin
  class CategoriesController < Admin::BaseAdminController
    before_action :find_category, only: %i(edit update destroy)

    def index
      @categories = Category.all
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new category_params
      if @category.save
        flash[:success] = t ".category_create_success"
        redirect_to admin_categories_path
      else
        flash[:danger] = t ".category_create_danger"
        render :new
      end
    end

    def edit; end

    def update
      if @category.update_attributes category_params
        flash[:success] = t ".update_category_success"
        redirect_to admin_categories_path
      else
        flash[:danger] = t ".update_category_danger"
        render :edit
      end
    end

    def destroy
      if @category.destroy
        flash[:success] = t ".delete_category_success"
      else
        flash[:danger] = t ".delete_category_danger"
      end
      redirect_to admin_categories_path
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end

    def load_category
      @category = Category.find_by(id: params[:id])
      redirect_to "/404" unless @category
    end
  end
end
