require 'tmpdir'
require 'launchy'

module DebugHTML
  def self.save(html)
    save_html(html)
  end

  def self.save_and_open(html)
    path = save_html(html)
    Launchy.open(path)
  end

  def self.save_html(html)
    file = File.new(full_path, 'w')
    file.write(html)
    file.close

    file.path
  end

  def self.full_path
    tmpdir = Dir.tmpdir
    "#{tmpdir}/#{filename}"
  end

  def self.filename
    timestamp = Time.new.strftime('%Y%m%d%H%M%S')
    "debug_html-#{timestamp}#{rand(10**10)}.html"
  end

  private_class_method :save_html
  private_class_method :full_path
  private_class_method :filename
end
