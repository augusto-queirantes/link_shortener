class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.string :redirect_from, null: false
      t.string :shortcode, null: false, index: { unique: true }
      t.integer :click_count, null: false, default: 0
      t.string :creator_ip, null: false
      t.datetime :last_clicked_at

      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
