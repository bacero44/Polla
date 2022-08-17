# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



tournament = Tournament.create(name: 'FIFA World Cup 2022')
stage = Stage.create(name: 'Grups', tournament_id: tournament.id)
groups = Group.create(
  [
    { id: 1, name: 'A', stage_id: stage.id },
    { id: 2, name: 'B', stage_id: stage.id },
    { id: 3, name: 'C', stage_id: stage.id },
    { id: 4, name: 'D', stage_id: stage.id },
    { id: 5, name: 'E', stage_id: stage.id },
    { id: 6, name: 'F', stage_id: stage.id },
    { id: 7, name: 'G', stage_id: stage.id },
    { id: 8, name: 'H', stage_id: stage.id }
  ]
)

teams = Team.create(
  [
    { id: 1, name: 'Qatar', image_url: '/flags/ar.svg' },
    { id: 2, name: 'Ecuador', image_url: '/flags/ec.svg' },
    { id: 3, name: 'Senegal', image_url: '/flags/gh.svg' },
    { id: 4, name: 'Netherlands', image_url: '/flags/nl.svg' },
    { id: 5, name: 'England', image_url: '/flags/gb-eng.svg' },
    { id: 6, name: 'IR Iran', image_url: '/flags/ir.svg' },
    { id: 7, name: 'USA', image_url: '/flags/us.svg' },
    { id: 8, name: 'Wales', image_url: '/flags/gb-wls.svg' },
    { id: 9, name: 'Argentina', image_url: '/flags/ar.svg' },
    { id: 10, name: 'Saudi Arabia', image_url: '/flags/sa.svg' },
    { id: 11, name: 'Mexico', image_url: '/flags/mx.svg' },
    { id: 12, name: 'Poland', image_url: '/flags/pl.svg' },
    { id: 13, name: 'France', image_url: '/flags/fr.svg' },
    { id: 14, name: 'Denmark', image_url: '/flags/dk.svg' },
    { id: 15, name: 'Tunisia', image_url: '/flags/tn.svg' },
    { id: 16, name: 'Australia', image_url: '/flags/au.svg' },
    { id: 17, name: 'Spain', image_url: '/flags/es.svg' },
    { id: 18, name: 'Germany', image_url: '/flags/de.svg' },
    { id: 19, name: 'Japan', image_url: '/flags/jp.svg' },
    { id: 20, name: 'Costa Rica', image_url: '/flags/cr.svg' },
    { id: 21, name: 'Belgium', image_url: '/flags/be.svg' },
    { id: 22, name: 'Canada', image_url: '/flags/ca.svg' },
    { id: 23, name: 'Morocco', image_url: '/flags/ma.svg' },
    { id: 24, name: 'Croatia', image_url: '/flags/hr.svg' },
    { id: 25, name: 'Brazil', image_url: '/flags/br.svg' },
    { id: 26, name: 'Serbia', image_url: '/flags/rs.svg' },
    { id: 27, name: 'Switzerland', image_url: '/flags/ch.svg' },
    { id: 28, name: 'Cameroon', image_url: '/flags/sn.svg' },
    { id: 29, name: 'Portugal', image_url: '/flags/pt.svg' },
    { id: 30, name: 'Ghana', image_url: '/flags/gh.svg' },
    { id: 31, name: 'Uruguay', image_url: '/flags/uy.svg' },
    { id: 32, name: 'Korea Republic', image_url: '/flags/kr.svg' }
  ]
)

teams.each do |t|
  ParticipatingTeam.create(tournament_id: tournament.id, team_id: t.id)
end

matches = Match.create(
  [
    { home_team_id: 4, away_team_id: 3, start: '21-11-2022 11:00', group_id: 1, stage_id: 1 },
    { home_team_id: 5, away_team_id: 6, start: '21-11-2022 14:00', group_id: 2, stage_id: 1 },
    { home_team_id: 1, away_team_id: 2, start: '21-11-2022 17:00', group_id: 1, stage_id: 1 },
    { home_team_id: 7, away_team_id: 8, start: '21-11-2022 20:00', group_id: 2, stage_id: 1 },
    { home_team_id: 9, away_team_id: 10, start: '22-11-2022 11:00', group_id: 3, stage_id: 1 },
    { home_team_id: 14, away_team_id: 15, start: '22-11-2022 14:00', group_id: 4, stage_id: 1 },
    { home_team_id: 11, away_team_id: 12, start: '22-11-2022 17:00', group_id: 3, stage_id: 1 },
    { home_team_id: 13, away_team_id: 16, start: '22-11-2022 20:00', group_id: 4, stage_id: 1 },
    { home_team_id: 23, away_team_id: 24, start: '23-11-2022 11:00', group_id: 6, stage_id: 1 },
    { home_team_id: 18, away_team_id: 19, start: '23-11-2022 14:00', group_id: 5, stage_id: 1 },
    { home_team_id: 17, away_team_id: 20, start: '23-11-2022 17:00', group_id: 5, stage_id: 1 },
    { home_team_id: 21, away_team_id: 22, start: '23-11-2022 20:00', group_id: 6, stage_id: 1 },
    { home_team_id: 27, away_team_id: 28, start: '24-11-2022 11:00', group_id: 7, stage_id: 1 },
    { home_team_id: 31, away_team_id: 32, start: '24-11-2022 14:00', group_id: 8, stage_id: 1 },
    { home_team_id: 29, away_team_id: 30, start: '24-11-2022 17:00', group_id: 8, stage_id: 1 },
    { home_team_id: 25, away_team_id: 26, start: '24-11-2022 20:00', group_id: 7, stage_id: 1 },

    { home_team_id: 8, away_team_id: 6, start: '25-11-2022 11:00', group_id: 2, stage_id: 1 },
    { home_team_id: 1, away_team_id: 3, start: '25-11-2022 14:00', group_id: 1, stage_id: 1 },
    { home_team_id: 4, away_team_id: 2, start: '25-11-2022 17:00', group_id: 1, stage_id: 1 },
    { home_team_id: 5, away_team_id: 7, start: '25-11-2022 20:00', group_id: 2, stage_id: 1 },
    { home_team_id: 15, away_team_id: 16, start: '26-11-2022 11:00', group_id: 4, stage_id: 1 },
    { home_team_id: 12, away_team_id: 10, start: '26-11-2022 14:00', group_id: 3, stage_id: 1 },
    { home_team_id: 13, away_team_id: 14, start: '26-11-2022 17:00', group_id: 4, stage_id: 1 },
    { home_team_id: 9, away_team_id: 11, start: '26-11-2022 20:00', group_id: 3, stage_id: 1 },
    { home_team_id: 19, away_team_id: 20, start: '27-11-2022 11:00', group_id: 5, stage_id: 1 },
    { home_team_id: 21, away_team_id: 23, start: '27-11-2022 14:00', group_id: 6, stage_id: 1 },
    { home_team_id: 24, away_team_id: 22, start: '27-11-2022 17:00', group_id: 6, stage_id: 1 },
    { home_team_id: 17, away_team_id: 18, start: '27-11-2022 20:00', group_id: 5, stage_id: 1 },
    { home_team_id: 28, away_team_id: 26, start: '28-11-2022 11:00', group_id: 7, stage_id: 1 },
    { home_team_id: 32, away_team_id: 30, start: '28-11-2022 14:00', group_id: 8, stage_id: 1 },
    { home_team_id: 25, away_team_id: 27, start: '28-11-2022 17:00', group_id: 7, stage_id: 1 },
    { home_team_id: 29, away_team_id: 31, start: '28-11-2022 20:00', group_id: 8, stage_id: 1 },

    { home_team_id: 2, away_team_id: 3, start:'29-11-2022 16:00', group_id: 1, stage_id: 1 },
    { home_team_id: 4, away_team_id: 1, start:'29-11-2022 16:00', group_id: 1, stage_id: 1 },
    { home_team_id: 6, away_team_id: 7, start:'29-11-2022 20:00', group_id: 2, stage_id: 1 },
    { home_team_id: 8, away_team_id: 5, start:'29-11-2022 20:00', group_id: 2, stage_id: 1 },
    { home_team_id: 15, away_team_id: 13, start:'30-11-2022 16:00', group_id: 4, stage_id: 1 },
    { home_team_id: 16, away_team_id: 14, start:'30-11-2022 16:00', group_id: 4, stage_id: 1 },
    { home_team_id: 12, away_team_id: 9, start:'30-11-2022 20:00', group_id: 3, stage_id: 1 },
    { home_team_id: 10, away_team_id: 11, start:'30-11-2022 20:00', group_id: 3, stage_id: 1 },
    { home_team_id: 24, away_team_id: 21, start:'1-12-2022 16:00', group_id: 6, stage_id: 1 },
    { home_team_id: 22, away_team_id: 23, start:'1-12-2022 16:00', group_id: 6, stage_id: 1 },
    { home_team_id: 19, away_team_id: 17, start:'1-12-2022 20:00', group_id: 5, stage_id: 1 },
    { home_team_id: 20, away_team_id: 18, start:'1-12-2022 20:00', group_id: 5, stage_id: 1 },
    { home_team_id: 32, away_team_id: 29, start:'2-12-2022 16:00', group_id: 8, stage_id: 1 },
    { home_team_id: 30, away_team_id: 31, start:'2-12-2022 16:00', group_id: 8, stage_id: 1 },
    { home_team_id: 26, away_team_id: 27, start:'2-12-2022 20:00', group_id: 7, stage_id: 1 },
    { home_team_id: 28, away_team_id: 25, start:'2-12-2022 20:00', group_id: 7, stage_id: 1 }
  ]
)