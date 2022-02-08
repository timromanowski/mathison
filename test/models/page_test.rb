# == Schema Information
#
# Table name: pages
#
#  id         :bigint           not null, primary key
#  title      :text
#  menu_text  :text
#  type       :text
#  header_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string
#
require "test_helper"

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
