json.extract! inspection, :id, :inspection_score, :inspection_date, :inspection_type, :violation_date, :violation_type, :risk_category, :description, :restaurant_id, :created_at, :updated_at
json.url inspection_url(inspection, format: :json)
