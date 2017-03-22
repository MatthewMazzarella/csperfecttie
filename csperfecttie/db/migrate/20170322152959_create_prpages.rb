class CreatePrpages < ActiveRecord::Migration[5.0]
  def change
    create_table :prpages do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.string :methodofcom
      t.string :phone
      t.string :suitsize
      t.string :preferedcolor
      t.string :style
      t.string :shirtsize
      t.string :shoesize
      t.string :hatsize
      t.string :birthday
      t.string :anniversary
      t.string :ordernumber
      t.string :orderdetails
      t.string :cost

      t.timestamps
    end
  end
end
