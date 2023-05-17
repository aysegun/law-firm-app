class AddCoordinatesToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :latitude, :float
    add_column :pages, :longitude, :float
  end
end
