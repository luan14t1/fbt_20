# frozen_string_literal: true

require "test_helper"

module Admin
  class ToursControllerTest < ActionDispatch::IntegrationTest
    test "should get index" do
      get admin_tours_index_url
      assert_response :success
    end
  end
end
