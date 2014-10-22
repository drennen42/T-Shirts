class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.integer :designer_id
      t.belongs_to :user
      t.belongs_to :purchase
    end
  end
end
