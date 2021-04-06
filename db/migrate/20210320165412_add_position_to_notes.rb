class AddPositionToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :position, :integer, default: nil
  end
end
