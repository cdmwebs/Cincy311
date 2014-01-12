require 'csv'

class CSVImport

  attr_accessor :errors, :csv, :warnings

  def initialize(path)
    self.errors = ActiveModel::Errors.new(self)
    self.warnings = ActiveModel::Errors.new(self)
    # naively assumes there's a path specified
    filename = path.respond_to?(:tempfile) && path.tempfile.respond_to?(:path) ? path.tempfile.path : path
    self.csv = CSV.read(filename, options)
  end

  def import
    return unless valid?
    csv.each do |row|
      import_row row
    end
  end

  def required_headers
    []
  end

  def optional_headers
    []
  end

  def valid_headers
    required_headers + optional_headers
  end

  def validate_header
    missing_headers = (required_headers - csv.headers).compact
    invalid_headers = (csv.headers - valid_headers).compact
    warnings.add(:invalid_headers, "Invalid headers: #{invalid_headers.to_sentence}") unless invalid_headers.empty?
    errors.add(:missing_headers, "Missing headers: #{missing_headers.to_sentence}") unless missing_headers.empty?
  end

  def valid?
    errors.clear
    warnings.clear
    validate_header
    errors.empty?
  end

  def options
    { headers: true }
  end
end

