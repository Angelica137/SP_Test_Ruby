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