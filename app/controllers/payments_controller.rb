class PaymentsController < MercadoPagoController
  PAYMENTS_URL = BASE_URL + 'payments/'

  def show
    request = PAYMENTS_URL + params[:id] + '?access_token=' + ENV['ACCESS_TOKEN']
    puts RestClient.get(request)
  end
end
