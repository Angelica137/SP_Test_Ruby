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
