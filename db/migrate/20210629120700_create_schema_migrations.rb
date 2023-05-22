class CreateSchemaMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :schema_migrations do |t|
      t.string :version
      t.string :varchar

      t.timestamps
    end
  end
end
