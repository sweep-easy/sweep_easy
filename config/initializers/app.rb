# frozen_string_literal: true

module App
  def self.credentials
    Rails.application.credentials
  end

  def self.config
    @config ||= Configuration.load!
  end

  def self.config=(value)
    @config = value
  end

  class Configuration
    attr_accessor :application_name
    attr_accessor :business_name
    attr_accessor :business_address
    attr_accessor :domain
    attr_accessor :default_from_email
    attr_accessor :support_email

    def self.load!
      new YAML.safe_load_file(config_path)
    end

    def self.config_path
      Rails.root.join("config/app.yml")
    end

    def initialize(options = {})
      @application_name = options["application_name"] || "My App"
      @business_name = options["business_name"] || "My Company, LLC"
      @business_address = options["business_address"] || ""
      @domain = options["domain"] || "example.com"
      @support_email = options["support_email"] || "support@example.com"
      @default_from_email =
        options["default_from_email"] || "My App <no-reply@example.com>"
    end
  end
end
