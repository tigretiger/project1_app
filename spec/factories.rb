# En utilisant le symbole ':user', nous obtenons que Factory Girl simule
# le modèle `User`.
Factory.define :user do |user|
  user.name                  "Michael Hartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :auteur do |auteur|
  auteur.content "Foobar"
  auteur.association :user
end
