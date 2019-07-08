# frozen_string_literal: true

require 'serverkit/resources/base'

module Serverkit
  module Resources
    class VscodePackage < Base
      attribute :name, required: true, type: String
      attribute :version, type: String

      # @note Override
      def apply
        run_command("code -install-extension #{name_with_version}")
      end

      # @note Override
      def check
        check_command("code --list-extensions --show-versions | grep -E '#{name_pattern_with_version}'")
      end

      private

      # @note Override
      def default_id
        name
      end

      # @return [String]
      # @example "^git-plus@4.4.11$"
      def name_pattern_with_version
        if version
          "^#{name}@#{version}$"
        else
          "^#{name}@"
        end
      end

      # @return [String]
      # @example "git-plus@4.4.11"
      def name_with_version
        if version
          "#{name}@#{version}"
        else
          name
        end
      end
    end
  end
end
