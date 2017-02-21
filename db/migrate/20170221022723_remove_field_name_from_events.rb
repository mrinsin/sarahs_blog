class RemoveFieldNameFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :fieldname, :string
  end
end
