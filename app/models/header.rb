# == Schema Information
#
# Table name: headers
#
#  id         :bigint           not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Header < ApplicationRecord
    has_many :pages
end
