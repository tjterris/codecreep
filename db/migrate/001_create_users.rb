class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :homepage
      t.string  :company
      t.integer :follower_count
      t.integer :following_count
      t.integer :repo_count
    end
  end
end
