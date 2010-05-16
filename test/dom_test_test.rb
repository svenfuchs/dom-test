$: << File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'test/unit'
require 'dom_test'
require 'test_declarative'
require 'webmock/test_unit'
require 'fakefs/safe'

include WebMock

class DomTestTest < Test::Unit::TestCase
  def setup
    stub_request(:any, /www\.w3\.org/).to_return { |request| { :body => request.uri.to_s } }
  end
  
  def teardown
    FakeFS.deactivate!
  end

  test "Archive fetch downloads and stores the zip file" do
    FakeFS.activate!

    archive = DomTest::Archive.new(1)
    archive.fetch

    assert_requested :get, archive.url
    assert File.exists?(archive.filename)
  end

  test "Dtd builds a dtd" do
    dtd = DomTest::Dtd.new(1)
    assert dtd.build.include?('<!ENTITY % framework-assertion')
  end
  
  test "try it" do
    DomTest.build
  end
end