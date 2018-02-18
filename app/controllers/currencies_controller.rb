class CurrenciesController < ApplicationController

  def index  
    @coinsnap = Hashie::Mash.new(Cryptocompare::CoinSnapshot.find('ETH', 'USD'))
    @symbols = Hashie::Mash.new(Cryptocompare::CoinList.all) 
    @exchanges = Hashie::Mash.new(Cryptocompare::Exchanges.all)
    @Cyptsy = Cryptocompare::Price.find('007', 'BTC', {'e' => 'Cryptsy'})
    @Coin = Cryptocompare::Price.full('BTC', 'USD')
    @coinName = params[:coinName]
  
  def AddCurrencies 
    @symbols.Data.each do |t|
      Cryptocurrency.create(name: t.second.CoinName.to_s, fullname: t.second.FullName.to_s, img_url: t.second.ImageUrl.to_s, symbol:  t.second.Symbol.to_s)
    end
  end

  def AddExchanges
    @exchanges.each do |t|
      Exchange.create(name: t.first.to_s, coins_number: t.second.length.to_i)
    end
  end
  
  end

  def show
    @currencies = Cryptocurrency.find(params[:id])
  end
end

