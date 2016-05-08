class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :contract, index: true
      t.string :contactname
      t.string :contactref
      t.string :contactemail
      t.string :contactperson
      t.timestamps null: false
    end
  end
end
