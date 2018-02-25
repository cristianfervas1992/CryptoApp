class CurrenciesController < ApplicationController

  def index  
    #@coinsnap = Hashie::Mash.new(Cryptocompare::CoinSnapshot.find('ETH', 'USD'))
    @symbols = Hashie::Mash.new(Cryptocompare::CoinList.all) 
    @exchanges = Hashie::Mash.new(Cryptocompare::Exchanges.all)
    @exchangeName = Exchange.all
    @currencies = Cryptocurrency.all
    @price = Hashie::Mash.new(Cryptocompare::CoinSnapshot.find('BTC', 'USD'))
    @price_btc= Hashie::Mash.new(Cryptocompare::Price.find('BTC', 'USD', {'e' => 'LocalBitcoins'}))
    #@Cyptsy = Cryptocompare::Price.find('007', 'BTC', {'e' => 'Cryptsy'})
    #@Coin = Cryptocompare::Price.full('BTC', 'USD')
    #@coinName = params[:coinName]
    #.to_s.split("#<Hashie::Mash").to_s.split("=#<Hashie::Array").to_s.split(">").to_s.gsub('\\', '').gsub('"','').gsub(',','')
  end

  def AddCurrencies 
    @symbols.Data.each do |t|
      Cryptocurrency.create(id: t.second.Id, name: t.second.CoinName.to_s, fullname: t.second.FullName.to_s, img_url: t.second.ImageUrl.to_s, symbol:  t.second.Symbol.to_s)
    end
  end

  def AddExchanges
    @exchanges.each do |t|
      Exchange.create(name: t.first.to_s, coins_number: t.second.length.to_i)
    end
  end

  def show
    @currencies = Cryptocurrency.find(params[:id])
  end


end

