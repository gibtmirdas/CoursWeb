class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :presence
      t.text :response
      t.integer :personne_id
      t.integer :introduction_question_id

      t.timestamps
    end
  end
end
