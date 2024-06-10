class CreateTestTagArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :test_tag_articles do |t|
      t.references :test_tag, null: false, foreign_key: true
      t.references :test_article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
