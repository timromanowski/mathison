# == Schema Information
#
# Table name: contents
#
#  id                :bigint           not null, primary key
#  type              :text
#  title             :text
#  sub_title         :text
#  length_in_minutes :integer
#  sort_order        :integer
#  featured          :boolean
#  content           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  ancestry          :string
#
require "test_helper"

class CaseStudyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
