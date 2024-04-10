class ApplicationController < ActionController::Base
    protected

    def after_sign_in_path_for(resources)
        dashboard_path
    end
end
