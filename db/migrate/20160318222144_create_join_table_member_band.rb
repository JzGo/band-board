class CreateJoinTableMemberBand < ActiveRecord::Migration
  def change
    create_join_table :members, :bands do |t|
       t.index [:member_id, :band_id]
       t.index [:band_id, :member_id]
    end
  end
end
