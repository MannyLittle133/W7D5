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
            redirect_to subs_url(@sub)
        else
            flash.now[:errors] = @sub.errors.full_messages
            render :new
        end
    end

    def update 
        @sub = Sub.find(params[:id])

        if @sub.update(sub_params)
            redirect_to sub_url(@sub)
        else
            render :json @sub.errors.full_message, status: :unprocessable_entity
        end
    end

end
