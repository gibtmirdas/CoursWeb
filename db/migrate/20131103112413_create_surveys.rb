class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :patient_id
      t.text :q1
      t.text :q2
      t.text :q3
      t.text :q3a
      t.text :q4
      t.text :q5
      t.text :q6
      t.text :q7
      t.text :q8
      t.text :q8a
      t.text :q8b
      t.text :q8c
      t.text :q8d
      t.text :q8e
      t.text :q8f
      t.text :q8g
      t.text :q8h
      t.text :q8i
      t.text :q8j
      t.text :q8k
      t.text :q8l
      t.text :q9
      t.text :q10
      t.text :q11
      t.text :q12
      t.text :q13
      t.text :q14

      t.timestamps
    end
    add_index :surveys, :patient_id
  end
end
