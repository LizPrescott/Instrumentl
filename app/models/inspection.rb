class Inspection < ApplicationRecord
  belongs_to :restaurant

  enum :inspection_type, [
    "Routine - Unscheduled",
    "Complaint",
    "Reinspection/Followup",
    "Foodborne Illness Investigation",
    "Non-inspection site visit",
    "Routine - Scheduled",
    "New Ownership"
  ]
  enum :risk_category, ["Low Risk", "Moderate Risk", "High Risk"]
end
