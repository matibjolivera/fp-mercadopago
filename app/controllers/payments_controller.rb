class PaymentsController < MercadoPagoController
  def show
    puts "entré a método show"
    puts RestClient.get(URL + params.id + '?access_token=' + ENV['ACCESS_TOKEN'])
  end
  def index
    puts "index"
  end
end
