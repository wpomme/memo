require 'optparse'

module Memo
  class Command
    module Options
      def self.parse!(argv)
        options = {}

        # 未定義のkey を指定されたら例外を発生させる
        sub_command_parsers = Hash.new do |k, v|
          raise ArgumentError, "'#{v}' はmemo のサブコマンドではありません。"
        end

        # memo list
        sub_command_parsers['list'] = OptionParser.new do |opt|
        end

        # memo -v / memo --version
        command_parser = OptionParser.new do |opt|
          opt.on_head('-v', '--version', 'Show program version') do |v|
            opt.version = Memo::VERSION
            puts opt.ver
            exit
          end
        end

        # 引数の解析を行う
        begin
          command_parser.order!(argv)
          options[:command] = argv.shift
          sub_command_parsers[options[:command]].parse!(argv)
        rescue OptionParser::MissingArgument, OptionParser::InvalidOption, ArgumentError => e
          abort e.message
        end

        options
      end
    end
  end
end
