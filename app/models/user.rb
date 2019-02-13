# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  firstname  :text
#  lastname   :text
#  handle     :text
#  password   :text
#  image      :text
#  email      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
    has_secure_password
    has_many :tweets
    has_many :likes
end
