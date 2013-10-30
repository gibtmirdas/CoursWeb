json.array!(@personnes) do |personne|
  json.extract! personne, :familyName, :maiderName, :firstName, :dateOfBirth, :email, :nationality, :civilStatus, :address, :city, :zipCode, :co, :privatePhone, :profPhone, :illnessInsurance, :additionnalInsurance
  json.url personne_url(personne, format: :json)
end
