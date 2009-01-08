$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require "inaction_mailer"
require "test/unit"
gem "mocha"
require "mocha"

class Test::Unit::TestCase
  class FileSystemStub
    attr_reader :fake_file_system
    
    def initialize(fake_file_system = {})
      @fake_file_system = fake_file_system
    end
    
    def open(filename, mode = "r")
      @fake_file_system[filename] ||= StringIO.new if mode == "w"
      raise Errno::ENOENT, "No such file or directory - #{filename}" unless @fake_file_system[filename]
      @fake_file_system[filename].rewind
      if block_given?
        yield @fake_file_system[filename]
      else
        @fake_file_system[filename]
      end
    end
    
    def read(filename)
      File.open(filename, "r") do |io|
        io.read
      end
    end
    
    def exist?(filename)
      @fake_file_system.has_key? filename
    end
    
    def directory?(d)
      @fake_file_system.has_key?(d.split("/").join("/") + "/")
    end

    def mkdir(d)
      @fake_file_system[d.split("/").join("/") + "/"] = :directory
    end
    
    def method_missing(m, *args)
      raise NotImplementedError, "You are using a stubbed file system, and File.#{m} was called, but the stubbed file system does not understand that menthod. Sorry."
    end
  end
  
  def with_stubbed_file_store(fake_file_system = {}, &block)
    file_class = File
    dir_class = Dir
    Object.send :remove_const, :File
    Object.const_set(:File, FileSystemStub.new(fake_file_system))
    Object.send :remove_const, :Dir
    Object.const_set(:Dir, File)
    yield
  ensure
    Object.send :remove_const, :File
    Object.const_set(:File, file_class)
    Object.send :remove_const, :Dir
    Object.const_set(:Dir, dir_class)
  end
end
