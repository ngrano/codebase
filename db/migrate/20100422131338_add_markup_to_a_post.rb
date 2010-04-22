class AddMarkupToAPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :markup, :string
  end

  def self.down
    remove_column :posts, :markup
  end
end
