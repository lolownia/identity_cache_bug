class Bar < ActiveRecord::Base
  has_many :foos, :dependent => :destroy

  include IdentityCache
  cache_index :name, :unique => true
  cache_has_many :foos, :embed => true
end
