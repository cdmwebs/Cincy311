class CallCSVImport < CSVImport
  def import_row(row)
    call = Call.from_csv_row(row.to_hash)
    call.save!
  rescue Exception => ex
    puts ex.message
    warnings.add(:invalid_row, row.inspect)
  end

  def options
    { headers: true, encoding: "ISO8859-1", col_sep: ?,, row_sep: ?\r }
  end
end

