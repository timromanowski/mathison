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
class Content < ApplicationRecord
    has_ancestry
    act_as_bookmarkee
    acts_as_taggable_on :tags

    def self.json_tree(nodes)
        nodes.map do |node, sub_nodes|
            node.as_json().merge(
                {
                    :methods => :type,
                    :children => Content.json_tree(sub_nodes).compact
                })
        end
    end

    def as_json(options={})
      super(options.merge({
            :methods => :type,
      }))
    end
end
