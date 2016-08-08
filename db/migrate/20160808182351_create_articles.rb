class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.integer :uid

      t.timestamps
    end
  end
end
