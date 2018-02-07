# frozen_string_literal: true

module Admin
  class CategoriesController < Admin::BaseAdminController
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

    private

    def category_params
      params.require(:category).permit(:name)
    end
  end
end
