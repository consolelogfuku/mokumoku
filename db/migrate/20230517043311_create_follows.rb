class CreateFollows < ActiveRecord::Migration[6.1]
  def change
    create_table :follows do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    add_index :follows, [:follower_id, :followed_id], unique: true # フォロワーとフォローされた人の組み合わせは一意
  end
end