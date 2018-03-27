module V1
	class Root < Grape::API
		version 'v1'
		format :json
		prefix :api

		get :status do 
			{status:'Ok!'}
			
		end

		mount V1::Alarms
		mount V1::Cryptocurrencies
		mount V1::Exchanges
		mount V1::Users
		mount V1::News


	end
end