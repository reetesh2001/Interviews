class HrsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

    def index
    end

    def show
        @hr = Hr.find(params[:id])
    end

    def new
        @hr = Hr.new
    end

    def create
        @hr = Hr.new(hr_params)
        if @hr.save
         session[:user_id]=@hr.id
         redirect_to @hr
        else
         render :new
        end
    end

    def edit
        @hr = Hr.find(params[:id])
    end

    def update
        @hr = Hr.find(params[:id])
        if @hr.update(hr_params)
            redirect_to @hr
        else
            render :edit
        end
    end

    def destroy
        @article = Hr.find(params[:id])
        @article.destroy
        redirect_to root_path, status: :see_other
    end

    private
    def hr_params
        params.require(:hr).permit(:name, :email, :status, :password, :phone_number)
    end

end
