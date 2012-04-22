class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :content
      t.string :tag

      t.timestamps
    end
  end
end
