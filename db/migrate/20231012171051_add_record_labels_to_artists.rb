class AddRecordLabelsToArtists < ActiveRecord::Migration[7.0]
  def change
    add_reference :artists, :record_label, null: false, foreign_key: true
  end
end
