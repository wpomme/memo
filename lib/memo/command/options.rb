require 'optparse'

module Memo
  class Command
    module Options
      Arguments = Data.define(:argv)
      SUB_COMMANDS = %w[list read].freeze

      def self.parse!(argv)
        parsed = command_parser.order(argv)
        sub_parsed = sub_command_parser(parsed)
        Arguments.new(argv: sub_parsed)
      end

      def self.command_parser
        # memo -v / memo --version
        OptionParser.new do |opt|
          opt.on_head('-v', '--version') do |_|
            opt.version = Memo::VERSION
            puts opt.ver
            exit
          end
        end
      end

      def self.sub_command_parser(argv)
        case argv.first
        when 'list'
          raise Options::ParseError, '"list" do not take any parameter' if argv.length > 1
        when 'read'
          raise Options::ParseError, '"read" must take an argument' if argv.length == 1 || argv.length > 2
        else
          raise OptionParser::ParseError, "unknown sub command"
        end
        argv
      end
    end
  end
end
