require "serverkit/resources/base"

module Serverkit
  module Resources
    class Karabiner < Base
      DEFAULT_KARABINER_EXECUTABLE_PATH = "/Applications/Karabiner.app/Contents/Library/bin/karabiner"

      attribute :karabiner_executable_path, default: DEFAULT_KARABINER_EXECUTABLE_PATH, type: String
      attribute :key, required: true, type: String
      attribute :value, required: true

      # @note Override
      def apply
        run_karabiner_command("set #{key} #{value}")
      end

      # @note Override
      def check
        check_karabiner_command("changed | grep -E '^#{key}=#{value}$'")
      end

      private

      # Wrapper of #check_command with karabiner executable
      def check_karabiner_command(command)
        check_command("#{karabiner_executable_path} #{command}")
      end

      # @note Override
      def default_id
        key
      end

      # Wrapper of #run_command with karabiner executable
      def run_karabiner_command(command)
        check_command("#{karabiner_executable_path} #{command}")
      end
    end
  end
end
