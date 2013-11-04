class IntroductionQuestion < ActiveRecord::Base
  validates :idQuestion, :uniqueness => true
end
