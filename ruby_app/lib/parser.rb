# frozen_string_literal: true

def read_data(list)
  # parses data and separates pages from ip adresses
  parsed_data = []
  list.each do |item|
    i = item.split
    parsed_data.append(i)
  end
  parsed_data
end

def org_data(data)
  # groups together pages with the ip addresses that viewed them
  hash = {}
  i = 0
  while i < data.length
    data.each do |page, ip|
      if hash.key?(page)
        hash[page] << ip
      else
        hash[page] = [ip]
      end
      i += 1
    end
  end
  hash
end

def count_page_views(hash)
  # counts how many times a page was viewed
  view_count = {}
  hash.each do |key, value|
    view_count[key] = [value.length]
  end
  view_count
end

def rank_page_views(hash)
  # ranks resutls from check method
  rank = hash.sort_by { |_k, v| v }
  rank.reverse
end

def prep_data(data)
  # prepares data for both requests
  parsed_log = read_data(data)
  org_data(parsed_log)
end

def prep_data_result_1(data)
  # prepares data for most viewed request
  page_views = prep_data(data)
  count_views = count_page_views(page_views)
  rank_page_views(count_views)
end
