class HrsController < ApplicationController
    def index
    end
    
    def show
    end
    
    def new
        @hr = Hr.new
    end
    
    def create
        @hr = Hr.new(hr_params)

        if @hr.save
        redirect_to @hr
        else
        render :new
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end

    private
    def hr_params
        params.require(:hr).permit(:name, :email, :status, :password)
    end
    
end
