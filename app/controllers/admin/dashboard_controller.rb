class Admin::DashboardController < ApplicationController
  before_action :authenticate_account!
    before_action :authorize_admin

    def index
      # Add any logic for your admin dashboard here, e.g., fetching data
      @users = User.all
    end

    private

    def authorize_admin
      redirect_to root_path, alert: "Access denied." unless current_account&.admin?
    end
end
