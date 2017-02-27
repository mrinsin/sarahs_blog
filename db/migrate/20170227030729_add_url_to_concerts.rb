class AddUrlToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :url, :string
  end
end
