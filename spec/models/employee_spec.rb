require 'rails_helper'

RSpec.describe Employee, type: :model do
  let :valid_employee do
    Employee.new.tap do |employee|
      employee.first_name = 'Tyler'
      employee.last_name = 'Willingham'
      employee.birthdate = '10/10/1991'.to_date
    end
  end

  describe '.full_name' do
    it 'is the first name and last name of an employee joined via a space' do
      expect(valid_employee.full_name)
        .to eq("#{valid_employee.first_name} #{valid_employee.last_name}")
    end
  end
end
