class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.references :user, index: true
      t.references :wiki, index: true

      t.timestamps null: false
    end
  end
end
