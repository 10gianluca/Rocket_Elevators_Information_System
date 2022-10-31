json.extract! elevator, :id, :columnID, :serialNumber, :model, :type, :status, :commissioningDate, :lastInspection, :inspectionCertificate, :information, :notes, :created_at, :updated_at
json.url elevator_url(elevator, format: :json)
