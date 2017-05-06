class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def user_params
    params.require(:user).permit(:login,:password, :password_confirmation, :remember_me)
  end

  # :email,

  has_one  :cart
  has_many :orders

end
