class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :requester
      t.string :description
      t.string :url
      t.string :branch

      t.timestamps
    end
  end
end
