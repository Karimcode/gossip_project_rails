class CreateLinkTags < ActiveRecord::Migration[6.0]
  def change
    create_table :link_tags do |t|

      t.timestamps
    end
  end
end
