json.extract! employee, :id, :firstname, :lastname, :title, :email, :password, :created_at, :updated_at
json.url employee_url(employee, format: :json)
