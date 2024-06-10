class CreateTestPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :test_posts do |t|
      t.text :content
      t.references :test_article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
