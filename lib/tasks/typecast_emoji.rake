namespace :typecast_emoji do
  desc "Copy assets files"
  task :install do
    src  = File.expand_path('../../public/emoji', File.dirname(__FILE__))
    dest = Rails.root.join('public/emoji')
    Rails::Generators::Base.source_root(src)
    @gen = ::Rails::Generators::Base.new
    FileUtils.mkdir_p(dest) if !File.exist?(dest)
    Dir.glob("#{src}/*").each do |file|
      basename = file.gsub("#{src}/",'')
      @gen.copy_file basename, File.join(dest, basename)
    end
  end
end

