# frozen_string_literal: true

require 'uniquevisits'

describe UniqueVisitsRequest do
  describe '#print_result_2' do
    it 'prints out the result querying for unique visits' do
      data = [
        '/help_page/1 126.318.035.038',
        '/help_page/1 126.318.035.038',
        '/help_page/1 126.318.035.038',
        '/contact 184.123.665.067',
        '/contact 184.123.665.067',
        '/home 184.123.665.067',
        '/home 184.123.665.067',
        '/home 184.123.665.067',
        '/home 184.123.665.067',
        '/about/2 444.701.448.104'
      ]
      result_unique = UniqueVisitsRequest.new
      expect(result_unique.print_result_2(data)).to eq(nil)
    end
  end
end
