require "smarter_csv"

namespace :import do
  desc "Import inspections and their associated restaurants from CSV file"
  task inspections: :environment do
    # TODO Allow dynamically uploading
    # TODO better error handling
    # TODO Implement bulk import for scalability
    # TODO Move to a Job
    SmarterCSV.process("lib/tasks/sf_restaurants.csv").each do |row_hash|
      restaurant_args = row_hash.slice!(:inspection_score, :inspection_date, :inspection_type, :violation_date, :violation_type, :risk_category, :description, :restaurant_id)
      # Avoids an n+1 query on restaurant. There may be a more elegant way to do this
      if @restaurant.nil? || (restaurant_args[:name] != @restaurant[:name])
          @restaurant = Restaurant.find_by_name(restaurant_args[:name]) || Restaurant.create!(restaurant_args)
      end
      @restaurant.inspections.create!(row_hash)
    end
  end
end
