class ExchangesController < ApplicationController
  def index
    @exchange = Exchange.all
  end

  def show
    @exchange = Exchange.find(params[:id])
  end

end
