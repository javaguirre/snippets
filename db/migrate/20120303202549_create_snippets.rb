class CreateSnippets < ActiveRecord::Migration
  def up
    create_table 'snippets' do |t|
        t.string 'title'
        t.text   'content'
        t.string  'tag'
        t.timestamps
    end
  end

  def down
    drop table 'snippets'
  end
end
