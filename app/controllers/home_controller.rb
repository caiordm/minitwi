class HomeController < ApplicationController
    def index
        @tweets = Tweet.paginate(:page => params[:page], per_page: 5).order('created_at DESC')
    end
end
