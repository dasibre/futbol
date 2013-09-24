# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  manager    :string(255)
#  stadium    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Club < ActiveRecord::Base
	has_many :players
end
