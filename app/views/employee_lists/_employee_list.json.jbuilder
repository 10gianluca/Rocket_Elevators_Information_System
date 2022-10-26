json.extract! employee_list, :id, :first_name, :last_name, :title, :email, :created_at, :updated_at
json.url employee_list_url(employee_list, format: :json)
