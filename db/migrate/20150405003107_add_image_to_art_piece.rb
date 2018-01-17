class AddImageToArtPiece < ActiveRecord::Migration[5.1]
  def change
    add_column :art_pieces, :image, :string
  end
end
