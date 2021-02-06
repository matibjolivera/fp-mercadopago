class MercadoPagoController < ApplicationController
  API_URL = 'https://api.mercadopago.com/v1/'

  def get (resource, params = nil)
    uri = API_URL + resource
    unless params.nil?
      uri += "?" + params
    end

    puts "GET Request - URL: " + uri

    JSON.parse(RestClient.get(uri, { :Authorization => 'Bearer ' + ENV['ACCESS_TOKEN'] }), symbolize_names: true)
  end

  def get_url_params
    url_params = ""
    i = 0
    params.except(:controller, :action).each do |key, value|
      separator = i == 0 ? "" : "&"
      url_params += separator + key.to_s + "=" + value.to_s
      i += 1
    end
    url_params
  end
end