class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :home_team, null: false, foreign_key: {to_table: :participating_teams}
      t.references :away_team, null: false, foreign_key: {to_table: :participating_teams}
      t.references :stage, null: false, foreign_key: true
      t.references :group, null: true, foreign_key: true
      t.datetime :start
      t.integer :score_team_1
      t.integer :score_team_2

      t.timestamps
    end
  end
end
