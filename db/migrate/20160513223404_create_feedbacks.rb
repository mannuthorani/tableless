class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :address
      t.text :message
      t.text :suggestion

      t.timestamps null: false
    end
  end
end
