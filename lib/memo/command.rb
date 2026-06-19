require 'find'
require 'memo/docs'

module Memo
  class Command
    def self.run(argv)
      new(argv).execute
    end

    def initialize(argv)
      @argv = argv
    end

    def execute
      parsed_options = Options.parse!(@argv)

      case parsed_options.argv.first
      when 'list'
        Docs.new.files
      when 'dirs'
        Docs.new.dirs
      when 'read'
        Docs.new.read(parsed_options.argv[1])
      end
    end
  end
end
