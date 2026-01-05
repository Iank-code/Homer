class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  and :
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable,
         :trackable, :omniauthable

  enum :role, { tenant: 0, landlord: 1, admin: 2, agent: 3 }, _default: :tenant
end
