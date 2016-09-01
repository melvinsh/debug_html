require 'debug_html'

describe DebugHTML, '#save' do
  context 'with some HTML' do
    it 'returns a valid path to an existing HTML file' do
      path = DebugHTML.save('<h1>Hello this is Patrick</h1>')
      expect(File.exist?(path))
      expect(File.open(path).read).to eq('<h1>Hello this is Patrick</h1>')
    end
  end
end

describe DebugHTML, '#save_and_open' do
  context 'with some HTML' do
    it 'opens a browser to render the HTML code' do
      expect(Launchy).to receive(:open)
      DebugHTML.save_and_open('<h1>Hello this is Patrick</h1>')
    end
  end
end
