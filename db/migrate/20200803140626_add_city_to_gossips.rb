class AddCityToGossips < ActiveRecord::Migration[6.0]
  def change
    add_reference    :gossips, :city, foreign_key: true
  end
end
