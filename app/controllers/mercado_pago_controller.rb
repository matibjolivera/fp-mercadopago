class MercadoPagoController < ApplicationController
  BASE_URL = 'https://api.mercadopago.com/v1/'

  def get(resource)
    JSON.parse(RestClient.get(resource, {:Authorization => 'Bearer ' + ENV['ACCESS_TOKEN']}))
  end
end