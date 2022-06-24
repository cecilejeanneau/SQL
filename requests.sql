SELECT*FROM users
-- selectionner tous parmis les users(table)
SELECT*FROM users ORDER BY last_name
-- idem mais rangée(triée) par nom de famille donc par ordre alphabétique des noms de famille
SELECT MAX(id) FROM users
-- le dernier users inscrit (le plus grand ID)
SELECT * FROM `users` WHERE birthdate LIKE '____-06-__ __:__:__'
-- tous les users dont le birthday est en juin date format 1989-06-04 01:31:08
-- '____-06-__ __:__:__' = %-06-%
SELECT COUNT(*) FROM users
-- nombre total (compte) d'enregistrements dans la table users, donc nb total users
SELECT users.*,addresses.city FROM users JOIN addresses ON addresses.user_id = users.id
-- selectionner all users and display on addresses table the city (JOIN)
SELECT users.* FROM users JOIN addresses ON addresses.user_id = users.id WHERE addresses.number IS NULL
-- La liste de tous les utilisateurs vivant à une adresse sans numéro ;