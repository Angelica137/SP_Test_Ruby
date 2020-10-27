# frozen_string_literal: true

require 'parser'

describe '#read_data' do
  it 'accpects a log file as argument' do
    list = File.readlines 'test.log'
    expect(read_data(list)).to eq([
                                    ['/help_page/1', '126.318.035.038'],
                                    ['/contact', '184.123.665.067'],
                                    ['/home', '184.123.665.067'],
                                    ['/about/2', '444.701.448.104'],
                                    ['/help_page/1', '929.398.951.889'],
                                    ['/index', '444.701.448.104'],
                                    ['/help_page/1', '722.247.931.582']
                                  ])
  end
end

describe '#org_data' do
  it 'takes a list and creates a hash of page and ip addresses and
	organises them in a hash' do
    data = [['/help_page/1', '126.318.035.038'],
            ['/contact', '184.123.665.067'],
            ['/home,', '184.123.665.067'],
            ['/about/2', '444.701.448.104']]
    expect(org_data(data)).to eq({
                                   '/about/2' => ['444.701.448.104'],
                                   '/contact' => ['184.123.665.067'],
                                   '/help_page/1' => ['126.318.035.038'],
                                   '/home,' => ['184.123.665.067']
                                 })
  end
end
