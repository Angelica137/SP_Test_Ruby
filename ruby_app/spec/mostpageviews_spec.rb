# frozen_string_literal: true

require 'mostpageviews'

describe MostPageViews do
  describe '#print_result_1' do
    it 'prints out the result querying for most viewed pages' do
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
      most_viewed = MostPageViews.new
      expect(most_viewed.print_result_1(data)).to eq(nil)
    end
  end
end
