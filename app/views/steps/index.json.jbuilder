json.array!(@steps) do |step|
  json.extract! step, :id, :text, :number
  json.url step_url(step, format: :json)
end
