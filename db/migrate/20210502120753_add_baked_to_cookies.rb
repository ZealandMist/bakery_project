class AddBakedToCookies < ActiveRecord::Migration[5.1]
  def change
    add_column :cookies, :baked, :boolean, default: false
  end
end
