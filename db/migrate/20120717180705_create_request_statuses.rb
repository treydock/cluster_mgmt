class CreateRequestStatuses < ActiveRecord::Migration
  def change
    create_table :request_statuses do |t|
      t.string :name
      t.string :display_name

      t.timestamps
    end
  end
end
