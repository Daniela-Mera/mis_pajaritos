class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #relacion 1 a n con tabla fono
  has_many :fonos, class_name:"Fono", foreign_key:"user_id"
end
