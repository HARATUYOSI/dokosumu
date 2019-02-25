class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true,uniqueness: true
         validates :email, uniqueness: true
         validates :birth_year, presence: true
         validates :birth_year, length: { is: 4 }, allow_blank: true
         
         before_create {self.birth_year = birth_year.tr!("０-９", "0-9")}

end
