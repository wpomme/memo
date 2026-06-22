# frozen_string_literal: true

require 'rainbow'

module Memo
  class Docs
    Entry = Data.define(:full_path, :dir)
    def initialize(exe_dir)
      @docs_dir = File.join(File.expand_path("..", exe_dir), 'docs')
      @entries = load_entries
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
      grouped_by_dir = @entries.group_by(&:dir)
      grouped_by_dir.each_key do |key|
        puts Rainbow(key).red
        grouped_by_dir[key].each do |entry|
          puts filename(entry.full_path)
        end
      end
    end

    private

    def filename(file_path)
      File.basename(file_path, '.md')
    end

    def load_entries
      Dir.glob("**/*.md", base: @docs_dir).filter_map do |rel_path|
        next if File.basename(rel_path) == 'README.md'

        Entry.new(
          full_path: File.join(@docs_dir, rel_path),
          dir: File.dirname(rel_path)
        )
      end
    end
  end
end
