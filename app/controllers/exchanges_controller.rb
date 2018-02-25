class ExchangesController < ApplicationController
  def index
    @exchange = Exchange.all
    
    @exchange.where(name: 'Coinbase')
  end

  def show
    @exchange = Exchange.find(params[:id])
  end

end
