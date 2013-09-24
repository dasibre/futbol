# == Schema Information
#
# Table name: pinboards
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  player_id   :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Pinboard do
  pending "add some examples to (or delete) #{__FILE__}"
end
