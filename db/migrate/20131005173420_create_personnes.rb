class CreatePersonnes < ActiveRecord::Migration
	def change
		create_table :personnes do |t|
			t.integer :personne_id
			t.string :familyName
			t.string :maiderName
			t.string :firstName
			t.date :dateOfBirth
			t.string :email
			t.string :nationality
			t.string :civilStatus
			t.string :address
			t.string :city
			t.string :zipCode
			t.string :co
			t.string :privatePhone
			t.string :profPhone
			t.string :illnessInsurance
			t.string :additionnalInsurance
			t.boolean :sex

			t.timestamps
		end
		add_index :personnes, :personne_id
	end
end
