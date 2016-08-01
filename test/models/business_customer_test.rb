# == Schema Information
#
# Table name: business_customers
#
#  id          :integer          not null, primary key
#  business_id :integer
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BusinessCustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
