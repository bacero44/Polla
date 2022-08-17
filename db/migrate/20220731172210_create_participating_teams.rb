class CreateParticipatingTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :participating_teams do |t|
      t.references :team, null: false, foreign_key: true
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
