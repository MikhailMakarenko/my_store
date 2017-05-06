class Order < ApplicationRecord


  def order_params
    params.require(:order).permit(:user, :user_id)
  end

  belongs_to :user
end
