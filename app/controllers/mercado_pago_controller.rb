class MercadoPagoController < ApplicationController
  API_URL = 'https://api.mercadopago.com/v1/'

  def get (resource, params)
    uri = API_URL + resource
    uri = params ? uri + "?" + params : uri

    puts "GET Request - URL: " + uri

    JSON.parse(RestClient.get(uri, { :Authorization => 'Bearer ' + ENV['ACCESS_TOKEN'] }), symbolize_names: true)
  end

  def get_url_params
    url_params = ""
    params.except(:controller, :action).each do |key, value|
      url_params += "&" + key.to_s + "=" + value.to_s
    end
    url_params
  end
end