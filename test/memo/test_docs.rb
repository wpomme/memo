require "test_helper"
require "tmpdir"
require "fileutils"

class TestDocs < Minitest::Test
  def setup
    @tmpdir = Dir.mktmpdir
    @docs_dir = File.join(@tmpdir, "docs")

    FileUtils.mkdir_p(File.join(@docs_dir, "cli"))
    FileUtils.mkdir_p(File.join(@docs_dir, "git"))

    File.write(File.join(@docs_dir, "README.md"), "# Top README\n")
    File.write(File.join(@docs_dir, "cli", "grep.md"), "grep command\n")
    File.write(File.join(@docs_dir, "cli", "find.md"), "find command\n")
    File.write(File.join(@docs_dir, "git", "log.md"), "git log\n")

    @original_dir = Dir.pwd
    Dir.chdir(@tmpdir)
  end

  def teardown
    Dir.chdir(@original_dir)
    FileUtils.remove_entry(@tmpdir)
  end

  def test_initialize_loads_entries
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)

    assert_instance_of Array, entries
    refute_empty entries
  end

  def test_load_entries_returns_entry_structs
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)

    entries.each do |entry|
      assert_instance_of Memo::Docs::Entry, entry
    end
  end

  def test_load_entries_excludes_readme
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)
    file_names = entries.map(&:file_name)

    refute_includes file_names, "README"
    refute_includes file_names, "README.md"
  end

  def test_load_entries_excludes_top_level_files
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)
    dir_names = entries.map(&:dir_name)

    refute_includes dir_names, "."
  end

  def test_load_entries_sets_dir_name
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)
    dir_names = entries.map(&:dir_name).sort.uniq

    assert_equal %w[cli git], dir_names
  end

  def test_load_entries_sets_file_name_without_extension
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)
    file_names = entries.map(&:file_name).sort

    assert_equal %w[find grep log], file_names
  end

  def test_load_entries_sets_full_path
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)

    entries.each do |entry|
      assert_instance_of Pathname, entry.full_path
      assert entry.full_path.exist?, "#{entry.full_path} should exist"
    end
  end

  def test_load_entries_with_empty_docs_directory
    FileUtils.rm_rf(Dir.glob(File.join(@docs_dir, "*")))
    docs = Memo::Docs.new
    entries = docs.instance_variable_get(:@entries)

    assert_empty entries
  end
end
