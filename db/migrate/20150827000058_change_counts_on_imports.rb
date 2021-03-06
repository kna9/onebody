class ChangeCountsOnImports < ActiveRecord::Migration
  def change
    change_table :imports do |t|
      t.remove :success_count
      t.remove :fail_count
      t.integer :row_count, default: 0
    end
  end
end
