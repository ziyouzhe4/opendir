require 'fastlane/action'
require_relative '../helper/opendir_helper'

module Fastlane
  module Actions
    class OpendirAction < Action
      def self.run(params)

        path = params[:path]
        system("open #{path}")

      end

      def self.description
        "open dir"
      end

      def self.authors
        ["majianjie"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "open dir"
      end

      def self.available_options
        [
            FastlaneCore::ConfigItem.new(
                key: :path,
                description: "传入一个 open 打开的路径",
                optional: true,
                type: String
            )
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
