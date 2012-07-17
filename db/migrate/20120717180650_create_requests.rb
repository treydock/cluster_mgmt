class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :request_status_id
      t.datetime :expires
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :department_id
      t.integer :class_id
      t.integer :affiliation_id
      t.integer :uid
      t.integer :gid
      t.integer :node_hours
      t.text :description

      t.timestamps
    end
  end
end
