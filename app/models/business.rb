# == Schema Information
#
# Table name: businesses
#
#  id           :integer          not null, primary key
#  company_name :text
#  company_type :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Business < ActiveRecord::Base
	has_many :staffs
	has_many :promotions
	has_many :business_customers
	has_many :customers, :through => :business_customers
end
