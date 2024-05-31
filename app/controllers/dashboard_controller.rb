class DashboardController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @tweets = Tweet.paginate(:page => params[:page], per_page: 20).order('created_at DESC')
    end
end
