# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



t = Tournament.create(name: "FIFA World Cup 2022") 
s = Stage.create(name: 'Grups', tournament_id: t.id)
g = Group.create(
  [
    { id: 1, name: 'A', stage_id: s.id },
    { id: 2, name: 'B', stage_id: s.id },
    { id: 3, name: 'C', stage_id: s.id },
    { id: 4, name: 'D', stage_id: s.id },
    { id: 5, name: 'E', stage_id: s.id },
    { id: 6, name: 'F', stage_id: s.id },
    { id: 7, name: 'G', stage_id: s.id },
    { id: 8, name: 'H', stage_id: s.id },
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