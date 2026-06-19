require 'find'
require 'memo/docs'

module Memo
  class Command
    def self.run(exe_dir, argv)
      new(exe_dir, argv).execute
    end

    def initialize(exe_dir, argv)
      @exe_dir = exe_dir
      @argv = argv
    end

    def execute
      parsed_options = Options.parse!(@argv)

      case parsed_options.argv.first
      when 'list'
        Docs.new(@exe_dir).files
      when 'dirs'
        Docs.new(@exe_dir).dirs
      when 'read'
        Docs.new(@exe_dir).read(parsed_options.argv[1])
      end
    end
  end
end
