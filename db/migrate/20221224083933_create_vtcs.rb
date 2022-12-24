class CreateVtcs < ActiveRecord::Migration[6.1]
  def change
    create_table :vtcs do |t|
      t.string :firstName
      t.string :lastName
      t.timestamps
    end
  end
end
