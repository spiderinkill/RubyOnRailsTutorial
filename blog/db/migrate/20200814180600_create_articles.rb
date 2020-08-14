#
# Auto generated from 'rails generate model Article'
#
#  Migrations are Ruby classes that are designed to make it simple to
#  create and modify database tables
#
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
