class PaymentsController < MercadoPagoController
  PAYMENTS_URL = BASE_URL + 'payments/'

  def show
    request = PAYMENTS_URL + params[:id] + '?access_token=' + ENV['ACCESS_TOKEN']
    @result = get(request)
    render "index"
  end
end
