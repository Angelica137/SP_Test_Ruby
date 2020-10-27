# frozen_string_literal: true

require_relative 'parser'

class MostPageViews
  # formats ranked pages to produce result 1
  def print_result_1(data)
    rank_views = prep_data_result_1(data)
    format_result_1(rank_views)
  end
end
