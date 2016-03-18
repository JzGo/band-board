class DropMembersBandsJoin < ActiveRecord::Migration
  def change
    drop_join_table :members, :bands
  end
end
