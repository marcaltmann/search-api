class CreateProjectsLocationsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :projects, :locations do |t|
      t.index :project_id
      t.index :location_id
    end
  end
end
