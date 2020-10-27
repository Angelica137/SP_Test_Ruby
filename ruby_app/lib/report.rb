# frozen_string_literal: true

require_relative 'mostpageviews'
require_relative 'uniquevisits'

lines = File.readlines 'webserver.log'

class Report
  attr_reader :data
  def initialize
    @data = data
  end

  def run_report(data)
    most_viewed = MostPageViews.new
    print("list of webpages with most page views ordered from most page views\n")
    print(most_viewed.print_result_1(data))

    unique_visits = UniqueVisitsRequest.new
    print("\nList of webpages with most unique page views\n")
    print(unique_visits.print_result_2(data))
  end
end

report = Report.new

print(report.run_report(lines))
