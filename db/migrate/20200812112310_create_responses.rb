class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.boolean :response

      t.timestamps
    end
  end
end
