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
class Page < ApplicationRecord
    has_ancestry
    acts_as_taggable_on :tags
    belongs_to :header

    def self.json_tree(nodes)
        nodes.map do |node, sub_nodes|
          {
              :title => node.title, 
              :id => node.id, 
              :menu_text => node.menu_text,
              :children => Page.json_tree(sub_nodes).compact}
        end
    end

end
