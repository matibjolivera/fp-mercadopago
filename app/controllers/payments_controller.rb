class PaymentsController < MercadoPagoController
  def show
    puts RestClient.get(URL + params[:id] + '?access_token=' + ENV['ACCESS_TOKEN'])
  end
end
