json.array!(@participants) do |participant|
  json.extract! participant, :id, :last_name, :first_name, :birth_date, :place_of_birth, :id_number, :adress, :zip_code, :city, :phone, :mobile, :affiliation_process, :entry_process, :expected_process, :entry_solution, :output_solution
  json.url participant_url(participant, format: :json)
end
