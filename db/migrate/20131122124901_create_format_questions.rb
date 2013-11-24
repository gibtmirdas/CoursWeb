class CreateFormatQuestions < ActiveRecord::Migration
  def change
    create_table :format_questions do |t|
      t.boolean :has_value
      t.string :value_format
      t.boolean :women
      t.boolean :required
      t.string :introduction_question_id

      t.timestamps
    end
  end
end
