require 'rubygems'

module DomTest
  autoload :Archive,   'dom_test/archive'
  autoload :Build,     'dom_test/build'
  autoload :Dtd,       'dom_test/dtd'
  autoload :Interface, 'dom_test/interface'

  TMP_DIR   = '/tmp'
  BASE_DIR  = File.expand_path('../..', __FILE__)
  
  class << self
    def build
      levels = {
        1 => %w(core html),
        2 => %w(core events html),
        # 3 => %w(core events ls validation xpath) # needs some work on the test-to-ruby.xsl
      }
      levels.each do |level, components|
        components.each do |component|
          puts "building tests: level#{level}/#{component}"
          Build.new(level, component).build
          puts
        end
      end
    end

    def build_dir(level, component)
      "#{BASE_DIR}/build/ruby/level#{level}/#{component}"
    end
    
    def source_dir
      "#{BASE_DIR}/source"
    end
    
    def tests_dir(level, component)
      "#{source_dir}/2001/DOM-Test-Suite/tests/level#{level}/#{component}"
    end
    
    def dom_to_dtd_filename
      "#{source_dir}/2001/DOM-Test-Suite/transforms/dom-to-dtd.xsl"
    end
        
    def test_to_ruby_filename
      "#{source_dir}/transforms/test-to-ruby.xsl"
    end
  
    def interfaces_filename(level)
      "#{source_dir}/interfaces/dom#{level}-interfaces.xml"
    end
  
    def dom_dtd_filename(level)
      "#{source_dir}/dtds/dom#{level}.dtd"
    end
  end
end