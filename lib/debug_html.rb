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

  private_class_method def self.save_html(html)
    file = File.new(full_path, 'w')
    file.write(html)
    file.close

    file.path
  end

  private_class_method def self.full_path
    tmpdir = Dir.tmpdir
    "#{tmpdir}/#{filename}"
  end

  private_class_method def self.filename
    timestamp = Time.new.strftime('%Y%m%d%H%M%S')
    "debug_html-#{timestamp}#{rand(10**10)}.html"
  end
end
