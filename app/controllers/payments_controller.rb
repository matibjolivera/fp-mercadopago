class PaymentsController < MercadoPagoController
  def show
    request = URL + params[:id] + '?access_token=' + ENV['ACCESS_TOKEN']
    puts request
    response = RestClient.get(request)
    puts response
  end
end
