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

  def edit
    @portfolioItem = Portfolio.find(params[:id])
  end

  def update
    @portfolioItem = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolioItem.update(params.require(:portfolio).permit(:title, :subTitle ,:body))
      format.html { redirect_to portfolios_path, notice: 'porfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolioItem = Portfolio.find(params[:id])
  end

  def destroy
    @portfolioItem = Portfolio.find(params[:id])

    @portfolioItem.destroy
    respond_to do |f|
      f.html {redirect_to portfolios_url, notice: "record was removed"}
    end
  end
end
