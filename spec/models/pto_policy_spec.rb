require 'rails_helper'

RSpec.describe PtoPolicy, type: :model do
  let :valid_pto_policy do
    PtoPolicy.new.tap do |pto|
      pto.hours = 160
    end
  end
end
