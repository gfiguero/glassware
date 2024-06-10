class CreateTestArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :test_articles do |t|
      t.string :name
      t.text :content
      t.boolean :option
      t.string :password_digest

      t.timestamps
    end
  end
end
