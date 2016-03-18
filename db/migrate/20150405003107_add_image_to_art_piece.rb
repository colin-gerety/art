class AddImageToArtPiece < ActiveRecord::Migration
  def change
    add_column :art_pieces, :image, :string
  end
end
