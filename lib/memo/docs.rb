# frozen_string_literal: true

module Memo
  class Docs
    # level: そのメモが入っているフォルダの階層
    # docs/ と docs/git/ が同じlevel = 1 となるが、フォルダ名で判断できるはず
    Entry = Data.define(:full_path, :dir, :level)
    def initialize(exe_dir)
      @docs_dir = File.join(File.expand_path("..", exe_dir), 'docs')
      @entries = load_entries(exe_dir)
      @dir_set = Set.new(@entries.map(&:dir).uniq)
    end

    def read(word)
      filtered_full_path = @entries.filter { |entry| filename(entry.full_path) == word }

      puts "#{word} というメモはありません。" if filtered_full_path.empty?

      filtered_full_path
        .map { |entry| File.readlines(entry.full_path, chomp: true) }
        .map { |line| puts(line) }
    end

    def dirs
      @dir_set.each { |dir| puts dir }
    end

    def files
      puts @entries.map { |entry| filename(entry.full_path) }.uniq
    end

    private

    def filename(file_path)
      File.basename(file_path, '.md')
    end

    def load_entries(exe_dir)
      Find.find(@docs_dir).filter_map do |path|
        Find.prune if path == exe_dir
        next if File.basename(path) == 'README.md'
        next if FileTest.directory?(path)

        rel = File.dirname(path.sub(@docs_dir, ''))

        Entry.new(
          full_path: path,
          dir: rel,
          level: rel.count("/")
        )
      end
    end
  end
end
