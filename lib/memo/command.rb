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
        if parsed_options.argv[1]
          Docs.new(@exe_dir).print_files_by_dir(parsed_options.argv[1])
        else
          Docs.new(@exe_dir).print_files
        end
      when 'dirs'
        Docs.new(@exe_dir).print_dirs
      when 'read'
        Docs.new(@exe_dir).read_and_print_content(parsed_options.argv[1])
      end
    end
  end
end
