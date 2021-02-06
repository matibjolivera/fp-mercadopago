class PaymentsController < MercadoPagoController
  PAYMENTS_URL = API_URL + 'payments/'

  def show
    request = PAYMENTS_URL + params[:id]
    @result = get(request)
    render "index"
  end

  def index
    resource = PAYMENTS_URL
    @result = get(resource, get_url_params)
    render "index"
  end
end
