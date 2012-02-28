class RenameInquiriesTable < ActiveRecord::Migration
  def self.up
    rename_table :inquiries, :spree_inquiries
  end

  def self.down
    rename_table :spree_inquiries, :inquiries
  end
end
