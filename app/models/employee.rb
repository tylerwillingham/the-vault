# Employees are the people that work for/with you. You are probably an employee
# of this company.
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
