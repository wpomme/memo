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
      arguments = Options.parse!(@argv)

      case arguments.argv.first
      when 'list'
        Docs.new.files
      when 'read'
        Docs.new.read(arguments.argv[1])
      end
    end
  end

  class Docs
    Entry = Data.define(:dir_name, :file_name, :full_path)

    def initialize
      @entries = load_entries
      ## For Debug
      ## puts @entries
    end

    def read(word)
      # TODO 該当のwordがない場合、そのようなメモはないと表示したい
      @entries
        .filter { |entry| entry.file_name == word }
        .map { |entry| File.readlines(entry.full_path, chomp: true) }
        .map { |line| puts(line) }
    end

    def directories
      puts @entries.map(&:dir_name).uniq
    end

    def files
      puts @entries.map(&:file_name).uniq
    end

    private

    def load_entries
      # full_path か、ファイルを読めるだけのパスだけを入れればいい気がする
      # 他の関数で、dir_name, file_name を作成すればいい
      base = Pathname.pwd.join('docs')
      base.find.filter_map do |path|
        rel = path.relative_path_from(base)
        next if rel.dirname == Pathname.new('.')
        next if rel.basename == Pathname.new('README.md')
        next if rel.directory?

        Entry.new(dir_name: rel.dirname.to_s, file_name: rel.basename('.*').to_s, full_path: base.join(path))
      end
    end
  end
end
