class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.integer :votable_id
      t.string :votable_type
      t.integer :polarity
      t.timestamps
    end
  end
end
