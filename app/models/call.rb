class Call < ActiveRecord::Base
  geocoded_by :street_address
  after_validation :geocode, if: ->(obj){ obj.address.present? && obj.address_changed? }

  def self.from_csv_row(row)
    self.new do |c|
      c.csr_number           = row["CSR #"]
      c.status               = row["STATUS"]
      c.sr_type              = row["SR TYPE"]
      c.description          = row["DESCRIPTION"]

      receive_date = row["DATE RECEIVED"].split(' ').first
      received_at  = DateTime.strptime("#{receive_date} #{row["TIME"]}", "%m/%d/%y %I:%M %P")
      c.received_at          = received_at

      c.location             = row["LOCATION"]
      c.address              = row["ADDRESS"]
      c.community            = row["COMMUNITY"]
      c.census_tract         = row["CENSUS TRACT"]
      c.priority             = row["PRIORITY"]
      c.method               = row["METHOD"]
      c.parcel_num           = row["PARCEL_NO"]
      c.user                 = row["USER_ID"]

      # c.date_a               = row["DATE_A"]
      # c.planned_comp         = row["PLANNED COMP"]
      # c.revised_planned_comp = row["REVISED PLANNED COMP"]
      # c.actual_comp          = row["ACTUAL COMP"]
      # c.date_of_status       = row["DATE OF STATUS"]
      # c.assignee             = row["ASSIGNEE"]
      # c.x_coord              = row["X_COORD"]
      # c.y_coord              = row["Y_COORD"]
      # c.steet_num            = row["STREET_NO"]
      # c.street_direction     = row["STREET_DIRECTION"]
      # c.street_name          = row["STREET_NAME"]
    end
  end

  def street_address
    "#{address} Cincinnati OH"
  end
end

