class CreatePersonnes < ActiveRecord::Migration
  def change
    create_table :personnes do |t|
      t.string :familyName
      t.string :maiderName
      t.string :firstName
      t.date :dateOfBirth
      t.string :email
      t.string :nationality
      t.string :civilStatus
      t.string :address
      t.string :city
      t.integer :zipCode
      t.string :co
      t.integer :privatePhone
      t.integer :profPhone
      t.string :illnessInsurance
      t.string :additionnalInsurance

      t.timestamps
    end
  end
end
