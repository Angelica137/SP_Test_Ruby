# frozen_string_literal: true

require 'parser'

describe '#read_data' do
  it 'accpects a log file as argument' do
    list = File.readlines 'test.log'
    expect(read_data(list)).to eq(['bike'])
  end
end
