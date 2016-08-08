class GetIDfromGuardian < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :guardian_id, :string
  end
end
