class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :assign_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  serialize :services, Array

  def assign_role
  	self.role = "company_staff" if self.role.nil?
  end

  def admin?
    self.role == "admin"
  end

  def service_owner?
    self.role == "service_owner"
  end

  def company_staff?
    self.role == "company_staff"
  end
end
