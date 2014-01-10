class CallSerializer < ActiveModel::Serializer
  attributes :id, :csr_number, :status, :sr_type, :description, :received_at,
    :location, :address, :community, :census_tract, :priority, :method,
    :parcel_num, :user
end
