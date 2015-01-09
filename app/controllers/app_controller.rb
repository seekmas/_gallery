class AppController < ApplicationController

    def index
        @activities = Activity.all
        render layout: 'application'
    end

    def show
        @activity = Activity.includes(:scenes).find(params[:id])
    end

end
