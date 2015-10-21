# A PTO Policy is an annual representation of the available paid time off
# available for a given employee for a particular year
class PtoPolicy < ActiveRecord::Base
  belongs_to :employee

  validates :employee, presence: true
  validates :hours, presence: true, numericality: true
  validates :year, presence: true, numericality: true
end
