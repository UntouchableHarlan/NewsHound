class CreateUpdateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :update_items do |t|
      t.string :uid
      t.date :updateDate
      t.string :titleText
      t.text :mainText
      t.string :redirectionUrl

      t.timestamps
    end
  end
end
