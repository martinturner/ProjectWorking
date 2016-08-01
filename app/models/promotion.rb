# == Schema Information
#
# Table name: promotions
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  point_cost  :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Promotion < ActiveRecord::Base
	belongs_to :business
end
