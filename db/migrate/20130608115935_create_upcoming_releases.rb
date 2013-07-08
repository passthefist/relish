class CreateUpcomingReleases < ActiveRecord::Migration
  def change
    create_table :upcoming_releases do |t|
      t.datetime :scheduledTime
      t.references :release

      t.timestamps
    end
    add_index :upcoming_releases, :release_id
  end
end
