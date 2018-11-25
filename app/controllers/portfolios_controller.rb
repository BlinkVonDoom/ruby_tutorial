class PortfoliosController < ApplicationController
  def index
    @portfolioItems = Portfolio.all
  end

  def new
    @portfolioItem = Portfolio.new
  end

  def create
    @portfolioItem = Portfolio.new(params.require(:portfolio).permit(:title, :subTitle ,:body))

    respond_to do |format|
      if @portfolioItem.save
        format.html {
          redirect_to portfolios_path, notice: "Your portfolio was created"
        }
      else
        format.html{ render :new }
      end
    end
  end


end
