class CreateNodeIncidents < ActiveRecord::Migration
  def change
    create_table :node_incidents do |t|
      t.text :description
      t.string :action

      t.timestamps
    end
  end
end
