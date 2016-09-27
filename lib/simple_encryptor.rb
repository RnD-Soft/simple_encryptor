require 'simple_encryptor/adapters/base'
require 'simple_encryptor/configure'
require 'simple_encryptor/dynamic'
require 'simple_encryptor/railtie' if defined?(Rails)
require 'simple_encryptor/resource'
require 'simple_encryptor/role'

module SimpleEncryptor
  extend Configure

  attr_accessor :role_cname, :adapter, :resource_adapter, :role_join_table_name, :role_table_name, :strict_rolify
  @@resource_types = []

  def rolify(options = {})
    #options.reverse_merge!({:role_cname => 'Role'})
#    self.role_cname = options[:role_cname]
#    self.role_table_name = self.role_cname.tableize.gsub(/\//, "_")
#
#    default_join_table = "#{self.to_s.tableize.gsub(/\//, "_")}_#{self.role_table_name}"
#    options.reverse_merge!({:role_join_table_name => default_join_table})
#    self.role_join_table_name = options[:role_join_table_name]
#
#    rolify_options = { :class_name => options[:role_cname].camelize }
#    rolify_options.merge!({ :join_table => self.role_join_table_name }) if Rolify.orm == "active_record"
#    rolify_options.merge!(options.reject{ |k,v| ![ :before_add, :after_add, :before_remove, :after_remove ].include? k.to_sym })
#
#    has_and_belongs_to_many :roles, rolify_options
#
#    self.adapter = Rolify::Adapter::Base.create("role_adapter", self.role_cname, self.name)
#
#    #use strict roles
#    self.strict_rolify = true if options[:strict]
  end

  def self.resource_types
    @@resource_types
  end

end
