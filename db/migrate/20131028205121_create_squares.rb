class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.float :width
      t.float :height

      t.timestamps
    end
  end
end
