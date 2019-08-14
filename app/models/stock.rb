class Stock < ApplicationRecord

	def self.new_from_lookup(ticker_symbol)
		begin
			StockQuote::Stock.new(api_key: 'pk_b6d6740dd84348dea831c8f77d9d9e77')
			looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
			new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.previous_close)
		rescue Exception => e 
			return nil
		end 
	end
end
