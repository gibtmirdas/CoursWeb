class Survey < ActiveRecord::Base
  belongs_to :patient, {:foreign_key => 'id'}
  validates :patient_id, presence: true
end
