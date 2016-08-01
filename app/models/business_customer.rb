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

class BusinessCustomer < ActiveRecord::Base
  belongs_to :business
  belongs_to :customer
end
