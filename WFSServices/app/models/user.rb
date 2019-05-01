class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :assign_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_inclusion_of :role, in: %w( company_staff admin service_owner), message: "is not recognized in the system"

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
