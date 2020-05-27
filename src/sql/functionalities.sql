# 1) Dodanie nowego właściciela zwierzęcia do bazy danych.

INSERT INTO owner(first_name, last_name, address, phone_number) VALUES ('Krystyna', 'Kwiatek', 'ul Bratysławska 7a', 'Kraków 31-201', 124785693);

# 2) Usunięcie właściciela zwierzęcia z bazy danych.

DELETE FROM owner WHERE first_name = "Krystyna" AND last_name = "Kwiatek";

# 3) Dodanie nowego zwierzęcia dla danego właściciela.

INSERT INTO animal(name, sex, birth_date, species, breed, color, fur, owner_id) VALUES ('Azor', 'Male', '2019-03-25', 'Pies', 'Owczarek Niemiecki', 'Brązowo-Czarny', 'Mieszane', 1);

# 4) Usunięcie danego zwierzęcia wybranego właściciela.

DELETE FROM animal WHERE name = "Azor" AND owner_id = 1;

# 5) Wypisanie wszystkich zwierząt właściciela, na podstawie imienia oraz nazwiska właściciela.

SELECT owner.first_name, owner.last_name, animal.name, animal.sex, animal.birth_date, animal.species FROM animal INNER JOIN owner ON animal.owner_id = owner.owner_id WHERE owner.first_name = 'Barbara' AND owner.last_name = 'Warszawska';

# 6) Wypisanie informacji szczegółowych o zwierzęciu właściciela, na podstawie imienia i nazwiska właściciela oraz i imienia zwierzęcia.

SELECT animal.* FROM animal INNER JOIN owner ON animal.owner_id = owner.owner_id WHERE owner.first_name = "Barbara" AND owner.last_name = "Warszawska" AND animal.name = 'Brutus';

# 7) Dodanie wizyty dla danego zwierzęcia.

INSERT INTO appointment(data, time, veterinarian_id, animal_id) VALUES ('2020-05-27', '15:00:00', 1, 1); 

# 8) Edycja wizyty.

UPDATE appointment SET data = '2020-07-07', time = '10:00', animal_id = 4, veterinarian_id = 6 WHERE data = '2020-05-27' AND time  = '15:00:00';

# 9) Wypisanie wszystkich wizyt dla danego właściciela, na podstawie imienia oraz nazwiska właściciela.

SELECT owner.first_name, owner.last_name, animal.name, appointment.data, appointment.time FROM animal JOIN appointment ON appointment.animal_id = animal.animal_id JOIN owner ON animal.owner_id = owner.owner_id WHERE owner.last_name = 'Warszawska';

# 10) Wypisanie diagnoz dla zwierzęcia.

SELECT animal.name, appointment.data, diagnosis.name, diagnosis.description FROM animal INNER JOIN appointment ON animal.animal_id = appointment.animal_id INNER JOIN animal_diagnosis ON animal.animal_id = animal_diagnosis.animal_diagnosis_id INNER JOIN diagnosis ON animal_diagnosis.animal_diagnosis_id = diagnosis.diagnosis_id WHERE animal.name = 'Burek';

# 11) Wypisanie wizyt na dany dzień dla weterynarza na podstawie imienia oraz nazwiska.

SELECT appointment.data, appointment.time, owner.first_name, owner.last_name, animal.name, animal.species, animal.breed, veterinarian.first_name, veterinarian.last_name FROM owner INNER JOIN animal ON owner.owner_id = animal.owner_id INNER JOIN appointment ON animal.animal_id = appointment.animal_id INNER JOIN veterinarian ON appointment.veterinarian_id = veterinarian.veterinarian_id WHERE veterinarian.first_name = 'Kordian' AND veterinarian.last_name = 'Kowalski' AND appointment.data = CURRENT_DATE;

#12) Dodanie diagnozy do zwierzęcia przez weterynarza.

INSERT INTO animal_diagnosis(regimen, appointment_id, diagnosis_id) VALUES ('Zalecane ogarniczenie spacerów', 25, 16);

#13) Dodanie leku do recepty.

INSERT INTO drug_plan(diagnosis_id, advices, drug_id) VALUES(16, 'Suplementacja: 5 razy w tygodniu', 5);




