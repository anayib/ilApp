class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title
      t.string :content
      t.references :strategy, index: true

      t.timestamps
    end
  end
end
