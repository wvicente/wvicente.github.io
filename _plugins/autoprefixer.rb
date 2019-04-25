require 'autoprefixer-rails'

module Jekyll

  class AutoPrefixer < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~/^\.sass$/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      AutoprefixerRails.process(content)
    end

  end

end
