class CurrenciesController < ApplicationController

  def index  
    #@coinsnap = Hashie::Mash.new(Cryptocompare::CoinSnapshot.find('ETH', 'USD'))
    @symbols = Hashie::Mash.new(Cryptocompare::CoinList.all) 
    @exchanges = Hashie::Mash.new(Cryptocompare::Exchanges.all)
    @exchangeName = Exchange.all
    @currencies = Cryptocurrency.all
    @price = Hashie::Mash.new(Cryptocompare::CoinSnapshot.find('BTC', 'USD'))
    @price_btc = Hashie::Mash.new(Cryptocompare::Price.find('BTC', 'USD', {'e' => 'LocalBitcoins'}))
    @fullPrice = Cryptocompare::Price.full('BTC', 'USD')
    #AddExchanges()
    #AddCurrencies()
    #RelationCurrencyExchange()
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
      Exchange.create(name: t.first.to_s, coins_number: t.second.count.to_i)
    end
  end

  def RelationCurrencyExchange
    @exchanges.each do |t|
      if(!Exchange.find_by(name: t.first.to_s).nil?)
        exchange = Exchange.find_by(name: t.first.to_s).id
        t.second.each do |u|
          if(!currency = Cryptocurrency.find_by(symbol: u.first.to_s).nil?)
            currency = Cryptocurrency.find_by(symbol: u.first.to_s).id
            Cryptoexchange.create(exchange_id: exchange, cryptocurrency_id: currency)
          end
        end
      end
    end
  end

  def show
    @currencies = Cryptocurrency.find(params[:id])
  end

  def showMarkets (nombre)
    moneda = Cryptocurrency.find_by(name: nombre)
    @mercados = moneda.exchanges.each do |t|
      t.name      
    end
  end

end

