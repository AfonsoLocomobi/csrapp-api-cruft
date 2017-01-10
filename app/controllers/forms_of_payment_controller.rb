class FormsOfPaymentController < AdminController

  def index
    render json: FormOfPayment.all
  end

end
