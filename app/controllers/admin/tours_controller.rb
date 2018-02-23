# frozen_string_literal: true

module Admin
  class ToursController < Admin::BaseAdminController
    def index
      @tours = Tour.all.order(created_at: :desc)
    end
  end
end
