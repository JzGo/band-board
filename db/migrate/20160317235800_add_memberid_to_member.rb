class AddMemberidToMember < ActiveRecord::Migration
  def change
    add_column :members, :memberid, :string
  end
end
