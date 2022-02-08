# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  act_as_bookmarker  
  validates :name, { presence: true, uniqueness: true }
end
