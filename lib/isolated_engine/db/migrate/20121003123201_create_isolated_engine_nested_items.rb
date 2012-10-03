class CreateIsolatedEngineNestedItems < ActiveRecord::Migration
  def change
    create_table :isolated_engine_nested_items do |t|

      t.timestamps
    end
  end
end
