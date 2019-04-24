class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :assign_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def assign_role
  	self.role = "company_staff" if self.role.nil?
  end
end
