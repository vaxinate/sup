class SupsController < ApplicationController
  respond_to :json

  def create
    @sup = Sup.create(sup_params)
    respond_with @sup
  end

  private

  def sup_params
    params.require(:sup).permit(:sender_id, :recipient_id)
  end
end
