# == Schema Information
#
# Table name: points
#
#  id            :integer          not null, primary key
#  current_point :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Point < ActiveRecord::Base
	belongs_to :customer
	
end
