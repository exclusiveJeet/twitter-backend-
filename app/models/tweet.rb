st# == Schema Information
#
# Table name: tweets
#
#  id         :bigint(8)        not null, primary key
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tweet < ApplicationRecord
    belongs_to :user , :optional => true
    has_many :likes
end
