class PaymentsController < MercadoPagoController
  PAYMENTS_RESOURCE = 'payments/'

  def show
    request = PAYMENTS_RESOURCE + params[:id]
    @result = get(request)
    render "index"
  end

  def index
    resource = PAYMENTS_RESOURCE + "search"
    @result = get(resource, get_url_params)
    render "index"
  end
end
