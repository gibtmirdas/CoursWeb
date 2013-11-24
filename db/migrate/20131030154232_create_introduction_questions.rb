class CreateIntroductionQuestions < ActiveRecord::Migration
	def change
		create_table :introduction_questions do |t|
			t.integer :idQuestion
			t.string :tag
			t.text :question
			t.boolean :woman
			t.boolean :has_comment

			t.timestamps
		end
	end
end
