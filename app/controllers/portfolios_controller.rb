class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def show
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        if @portfolio_item.save
        redirect_to @portfolio_item, notice: 'portfolio_item was successfully created.' 
        else
        render action "new" 
        end
      end

       # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
    end
 

end
