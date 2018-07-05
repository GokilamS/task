class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :UserName
      t.text :Email
      t.text :Password
      t.text :ConfirmPassword

      t.timestamps
    end
  end
end
