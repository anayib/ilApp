class StrategiesController < ApplicationController

  respond_to :html ,  :js


  def index
    @strategies=Strategy.all
  end

  def show

    @strategy = Strategy.find(params[:id])

  end

  def new

    @strategy = Strategy.new

     #al crear el archivo new.js.erb el render que el
    #controlador hace por defecto lo va a hacer con
    #formato js porque le puse en el link_to del index.htm
    #el metodo remote: true, es decir hágalo en formato js

  end

  def edit
    @strategy = strategy.find(params[:id])
    #al crear el archivo edit.js.erb el render que el
    #controlador hace por defecto lo va a hacer con
    #formato js porque le puse en el link_to del index.htm
    #el metodo remote: true, es decir hágalo en formato js
  end

  def create
    binding.pry
    @strategy = Strategy.create(strategy_params)
    # @strategy.authors << Author.find(params[:strategy][:author_ids])
    #al crear el archivo create.js.erb el render que el
    #controlador hace por defecto lo va a hacer con
    #formato js porque le puse en el link_to del index.htm
    #el metodo remote: true, es decir hágalo en formato js
  end

  def update
    @strategy = Strategy.update(params[:id], strategy_params)
    #al crear el archivo update.js.erb el render que el
    #controlador hace por defecto lo va a hacer con
    #formato js porque le puse en el link_to del index.htm
    #el metodo remote: true, es decir hágalo en formato js

  end

  def destroy
    @strategy = Strategy.find(params[:id])
    @strategy.destroy
    respond_to do |format|
      format.html { redirect_to strategys_url, notice: 'El strategy fue destruido exitosamente' }
      format.json { head :no_content }

    end
  end

  private

  def strategy_params
    params.require(:strategy).
      permit(:title, :date,:intro, :user_id, author_ids: [])
  end
end



