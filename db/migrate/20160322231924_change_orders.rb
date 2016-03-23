class ChangeOrders < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
      	t.remove :tot
      	t.remove :al
      	t.integer :total
    end
  end
end
