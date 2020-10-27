# frozen_string_literal: true

require_relative 'parser'

class UniqueVisitsRequest
  def print_result_2(data)
    unique_views = prep_data_result_2(data)
    format_result_2(unique_views)
  end
end

# lines = File.readlines 'webserver.log'

# d = UniqueVisitsRequest.new
# print(d.print_result_2(lines))
