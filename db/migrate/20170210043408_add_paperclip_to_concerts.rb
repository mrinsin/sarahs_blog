class AddPaperclipToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_attachment :concerts, :image
  end
end
