class SubsController < ApplicationController
    def index
        @subs = Sub.all 
        render :index
    end

    def show 
        @sub = Sub.find(params[:id])
        render :show
    end

    def new
        render new
    end

    def create
        @sub = Sub.new(sub_params)
        @sub.moderator_id = current_user.id
        
        if @sub.save
            redirect_to subs_url()
end
