# build interface.xml files: http://www.w3.org/DOM/Test/Documents/DOMTSBuild.html

STDOUT.sync = true

require 'fileutils'
require 'nokogiri'

module DomTest
  class Build
    BASE_DIR  = File.expand_path('../../..', __FILE__)

    attr_reader :level, :component

    def initialize(level = 1, component = 'core')
      @level = level
      @component = component
    end

    def build
      FileUtils.mkdir_p(build_dir)
      Dtd.new(level).build
      test_files.each { |source| build_file(source, target(source)) && putc('.') }
    end
    
    def build_file(source, target)
      xml = Nokogiri::XML.parse(File.read(source), source)
      File.open(target, 'wb') { |f| f.write(to_ruby(xml)) }
    end

    def to_ruby(xml)
      xslt.apply_to(xml, ['interfaces-docname', "'#{DomTest.interfaces_filename(level)}'"])
    end

    def xslt
      Nokogiri::XSLT.parse(File.read(DomTest.test_to_ruby_filename))
    end

    def target(source)
      "#{build_dir}/test_#{File.basename(source, '.xml')}.rb"
    end

    def test_files
      filenames = Dir["#{tests_dir}/**/*.xml"]
      filenames.reject { |source| source =~ /alltests\.xml/ }
    end
    
    def tests_dir
      DomTest.tests_dir(level, component)
    end

    def build_dir
      DomTest.build_dir(level, component)
    end
  end
end