require 'find'
require 'pathname'

module Memo
  class Command
    def self.run(argv)
      new(argv).execute
    end

    def initialize(argv)
      @argv = argv
    end

    def execute
      options = Options.parse!(@argv)
      sub_command = options.delete(:command)

      case sub_command
      when 'list'
        Docs.new.files
      end
    end
  end

  class Docs
    Entry = Data.define(:dir_name, :file_name)

    def initialize
      @entries = load_entries
    end

    def directories
      puts @entries.map(&:dir_name).uniq
    end

    def files
      puts @entries.map(&:file_name).uniq
    end

    private

    def load_entries
      base = Pathname.pwd.join('docs')
      base.find.filter_map do |path|
        rel = path.relative_path_from(base)
        next if rel.dirname == Pathname.new('.')

        Entry.new(dir_name: rel.dirname, file_name: rel.basename('.*'))
      end
    end
  end
end
