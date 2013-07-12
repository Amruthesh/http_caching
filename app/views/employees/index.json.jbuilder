json.array!(@employees) do |employee|
  json.extract! employee, :name, :salary
  json.url employee_url(employee, format: :json)
end
