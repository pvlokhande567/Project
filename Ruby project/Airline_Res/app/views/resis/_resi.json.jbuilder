json.extract! resi, :id, :Fisrt_Name, :Last_Name, :Email, :Password, :Confirm_Password, :created_at, :updated_at
json.url resi_url(resi, format: :json)
