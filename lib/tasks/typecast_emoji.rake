namespace :typecast_emoji do
  desc "Copy assets files"
  task :install do
    %w(emoji javascripts stylesheets).map do |dir|
      src  = File.expand_path("../../public/#{dir}", File.dirname(__FILE__))
      dest = Rails.root.join("public/#{dir}")
      Rails::Generators::Base.source_root(src)
      @gen = ::Rails::Generators::Base.new
      FileUtils.mkdir_p(dest) if !File.exist?(dest)
      Dir.glob("#{src}/*").each do |file|
        basename = file.gsub("#{src}/",'')
        @gen.copy_file basename, File.join(dest, basename)
      end
    end
  end
end

