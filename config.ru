# frozen_string_literal: true

require "bundler/setup"
require_relative "system/container"

App.finalize!

run App["my_api"]
