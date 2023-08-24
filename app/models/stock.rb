class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:access_key_id],
            secret_token: 'sk_becf5ff3d77b462d83238ca503aec081',
            endpoint: 'https://cloud.iexapis.com/v1'
          )
        client.price(ticker_symbol)
    end
end
