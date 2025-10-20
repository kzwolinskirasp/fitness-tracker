-- migration: seed data for categories and exercises
-- description: adds initial test data for categories and exercises
-- created at: 2025-10-20 09:45:00 utc

-- Insert categories
INSERT INTO categories (id, name, description, image_url) VALUES
  ('a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d', 'Klatka piersiowa', 'Ćwiczenia na klatkę piersiową', 'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=400'),
  ('b2c3d4e5-f6a7-4b5c-9d0e-1f2a3b4c5d6e', 'Plecy', 'Ćwiczenia na plecy', 'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=400'),
  ('c3d4e5f6-a7b8-4c5d-0e1f-2a3b4c5d6e7f', 'Nogi', 'Ćwiczenia na nogi', 'https://images.unsplash.com/photo-1434682881908-b43d0467b798?w=400'),
  ('d4e5f6a7-b8c9-4d5e-1f2a-3b4c5d6e7f8a', 'Barki', 'Ćwiczenia na barki', 'https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?w=400'),
  ('e5f6a7b8-c9d0-4e5f-2a3b-4c5d6e7f8a9b', 'Biceps', 'Ćwiczenia na biceps', 'https://images.unsplash.com/photo-1581009146145-b5ef050c2e1e?w=400'),
  ('f6a7b8c9-d0e1-4f5a-3b4c-5d6e7f8a9b0c', 'Triceps', 'Ćwiczenia na triceps', 'https://images.unsplash.com/photo-1532029837206-abbe2b7620e3?w=400'),
  ('a7b8c9d0-e1f2-4a5b-4c5d-6e7f8a9b0c1d', 'Brzuch', 'Ćwiczenia na mięśnie brzucha', 'https://images.unsplash.com/photo-1599058917212-d750089bc07e?w=400'),
  ('b8c9d0e1-f2a3-4b5c-5d6e-7f8a9b0c1d2e', 'Pośladki', 'Ćwiczenia na pośladki', 'https://images.unsplash.com/photo-1550345332-09e3ac987658?w=400')
ON CONFLICT (name) DO NOTHING;

-- Insert exercises for Klatka piersiowa category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('11111111-1111-1111-1111-111111111111', 'Wyciskanie sztangi na ławce poziomej', 'Podstawowe ćwiczenie na klatkę piersiową', 'medium', 'a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d'),
  ('22222222-2222-2222-2222-222222222222', 'Wyciskanie hantli na ławce skośnej (góra)', 'Ćwiczenie na górną część klatki piersiowej', 'medium', 'a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d'),
  ('33333333-3333-3333-3333-333333333333', 'Rozpiętki z hantlami na ławce poziomej', 'Izolowane ćwiczenie na klatkę piersiową', 'easy', 'a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d'),
  ('44444444-4444-4444-4444-444444444444', 'Pompki klasyczne', 'Ćwiczenie z własnym ciężarem ciała na klatkę', 'easy', 'a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d'),
  ('55555555-5555-5555-5555-555555555555', 'Przenoszenie hantla w leżeniu (pullover)', 'Ćwiczenie angażujące klatkę i plecy', 'medium', 'a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d');

-- Insert exercises for Plecy category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('66666666-6666-6666-6666-666666666666', 'Podciąganie na drążku szerokim nachwytem', 'Ćwiczenie na szerokość pleców', 'hard', 'b2c3d4e5-f6a7-4b5c-9d0e-1f2a3b4c5d6e'),
  ('77777777-7777-7777-7777-777777777777', 'Wiosłowanie sztangą w opadzie tułowia', 'Ćwiczenie na grubość pleców', 'medium', 'b2c3d4e5-f6a7-4b5c-9d0e-1f2a3b4c5d6e'),
  ('88888888-8888-8888-8888-888888888888', 'Ściąganie drążka wyciągu górnego do klatki', 'Ćwiczenie na szerokość pleców', 'medium', 'b2c3d4e5-f6a7-4b5c-9d0e-1f2a3b4c5d6e'),
  ('99999999-9999-9999-9999-999999999999', 'Martwy ciąg', 'Kompleksowe ćwiczenie angażujące plecy, nogi i core', 'hard', 'b2c3d4e5-f6a7-4b5c-9d0e-1f2a3b4c5d6e'),
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Wiosłowanie hantlem jednorącz', 'Ćwiczenie na grubość pleców', 'medium', 'b2c3d4e5-f6a7-4b5c-9d0e-1f2a3b4c5d6e');

-- Insert exercises for Nogi category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Przysiady ze sztangą', 'Podstawowe ćwiczenie na nogi i pośladki', 'medium', 'c3d4e5f6-a7b8-4c5d-0e1f-2a3b4c5d6e7f'),
  ('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Wykroki z hantlami lub sztangą', 'Ćwiczenie na nogi i pośladki', 'medium', 'c3d4e5f6-a7b8-4c5d-0e1f-2a3b4c5d6e7f'),
  ('dddddddd-dddd-dddd-dddd-dddddddddddd', 'Prostowanie nóg na maszynie (na czworogłowe uda)', 'Izolowane ćwiczenie na przód uda', 'easy', 'c3d4e5f6-a7b8-4c5d-0e1f-2a3b4c5d6e7f'),
  ('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Uginanie nóg na maszynie (na dwugłowe uda)', 'Izolowane ćwiczenie na tył uda', 'easy', 'c3d4e5f6-a7b8-4c5d-0e1f-2a3b4c5d6e7f'),
  ('ffffffff-ffff-ffff-ffff-ffffffffffff', 'Wspięcia na palce stojąc (łydki)', 'Ćwiczenie na mięśnie łydek', 'easy', 'c3d4e5f6-a7b8-4c5d-0e1f-2a3b4c5d6e7f');

-- Insert exercises for Barki category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('10101010-1010-1010-1010-101010101010', 'Wyciskanie sztangi nad głowę (military press)', 'Podstawowe ćwiczenie na barki', 'medium', 'd4e5f6a7-b8c9-4d5e-1f2a-3b4c5d6e7f8a'),
  ('20202020-2020-2020-2020-202020202020', 'Unoszenie hantli bokiem (na boczny delt barków)', 'Izolowane ćwiczenie na boczną część barków', 'easy', 'd4e5f6a7-b8c9-4d5e-1f2a-3b4c5d6e7f8a'),
  ('30303030-3030-3030-3030-303030303030', 'Unoszenie hantli w przód', 'Izolowane ćwiczenie na przednią część barków', 'easy', 'd4e5f6a7-b8c9-4d5e-1f2a-3b4c5d6e7f8a'),
  ('40404040-4040-4040-4040-404040404040', 'Wyciskanie hantli siedząc', 'Ćwiczenie na barki w pozycji siedzącej', 'medium', 'd4e5f6a7-b8c9-4d5e-1f2a-3b4c5d6e7f8a'),
  ('50505050-5050-5050-5050-505050505050', 'Face pull na wyciągu', 'Ćwiczenie na tylną część barków', 'easy', 'd4e5f6a7-b8c9-4d5e-1f2a-3b4c5d6e7f8a');

-- Insert exercises for Biceps category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('60606060-6060-6060-6060-606060606060', 'Uginanie ramion ze sztangą stojąc', 'Podstawowe ćwiczenie na biceps', 'easy', 'e5f6a7b8-c9d0-4e5f-2a3b-4c5d6e7f8a9b'),
  ('70707070-7070-7070-7070-707070707070', 'Uginanie ramion z hantlami (naprzemienne)', 'Ćwiczenie na biceps z hantlami', 'easy', 'e5f6a7b8-c9d0-4e5f-2a3b-4c5d6e7f8a9b'),
  ('80808080-8080-8080-8080-808080808080', 'Uginanie ramion na modlitewniku', 'Izolowane ćwiczenie na biceps', 'easy', 'e5f6a7b8-c9d0-4e5f-2a3b-4c5d6e7f8a9b'),
  ('90909090-9090-9090-9090-909090909090', 'Uginanie młotkowe z hantlami', 'Ćwiczenie na biceps i przedramiona', 'easy', 'e5f6a7b8-c9d0-4e5f-2a3b-4c5d6e7f8a9b'),
  ('a0a0a0a0-a0a0-a0a0-a0a0-a0a0a0a0a0a0', 'Uginanie ramion ze sztangą łamaną', 'Ćwiczenie na biceps ze sztangą EZ', 'easy', 'e5f6a7b8-c9d0-4e5f-2a3b-4c5d6e7f8a9b');

-- Insert exercises for Triceps category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('b0b0b0b0-b0b0-b0b0-b0b0-b0b0b0b0b0b0', 'Prostowanie ramion na wyciągu górnym (pushdown)', 'Podstawowe ćwiczenie na triceps', 'easy', 'f6a7b8c9-d0e1-4f5a-3b4c-5d6e7f8a9b0c'),
  ('c0c0c0c0-c0c0-c0c0-c0c0-c0c0c0c0c0c0', 'Wyciskanie francuskie sztangi leżąc', 'Ćwiczenie na triceps w pozycji leżącej', 'medium', 'f6a7b8c9-d0e1-4f5a-3b4c-5d6e7f8a9b0c'),
  ('d0d0d0d0-d0d0-d0d0-d0d0-d0d0d0d0d0d0', 'Pompki w podporze tyłem (na poręczach)', 'Ćwiczenie na triceps z ciężarem ciała', 'medium', 'f6a7b8c9-d0e1-4f5a-3b4c-5d6e7f8a9b0c'),
  ('e0e0e0e0-e0e0-e0e0-e0e0-e0e0e0e0e0e0', 'Prostowanie ramienia z hantlem w opadzie', 'Izolowane ćwiczenie na triceps', 'easy', 'f6a7b8c9-d0e1-4f5a-3b4c-5d6e7f8a9b0c'),
  ('f0f0f0f0-f0f0-f0f0-f0f0-f0f0f0f0f0f0', 'Wyciskanie wąsko sztangi leżąc', 'Ćwiczenie na triceps wąskim chwytem', 'medium', 'f6a7b8c9-d0e1-4f5a-3b4c-5d6e7f8a9b0c');

-- Insert exercises for Brzuch category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('01010101-0101-0101-0101-010101010101', 'Spięcia brzucha (crunch)', 'Podstawowe ćwiczenie na mięśnie brzucha', 'easy', 'a7b8c9d0-e1f2-4a5b-4c5d-6e7f8a9b0c1d'),
  ('12121212-1212-1212-1212-121212121212', 'Unoszenie nóg w zwisie na drążku', 'Ćwiczenie na dolną część brzucha', 'hard', 'a7b8c9d0-e1f2-4a5b-4c5d-6e7f8a9b0c1d'),
  ('23232323-2323-2323-2323-232323232323', 'Plank (deska)', 'Statyczne ćwiczenie na mięśnie core', 'easy', 'a7b8c9d0-e1f2-4a5b-4c5d-6e7f8a9b0c1d'),
  ('34343434-3434-3434-3434-343434343434', 'Skręty tułowia z piłką lekarską (Russian twist)', 'Ćwiczenie na skośne mięśnie brzucha', 'medium', 'a7b8c9d0-e1f2-4a5b-4c5d-6e7f8a9b0c1d'),
  ('45454545-4545-4545-4545-454545454545', 'Rowerek leżąc', 'Dynamiczne ćwiczenie na mięśnie brzucha', 'easy', 'a7b8c9d0-e1f2-4a5b-4c5d-6e7f8a9b0c1d');

-- Insert exercises for Pośladki category
INSERT INTO exercises (id, name, description, difficulty, category_id) VALUES
  ('56565656-5656-5656-5656-565656565656', 'Hip thrust ze sztangą', 'Podstawowe ćwiczenie na pośladki', 'medium', 'b8c9d0e1-f2a3-4b5c-5d6e-7f8a9b0c1d2e'),
  ('67676767-6767-6767-6767-676767676767', 'Wykroki chodzone', 'Ćwiczenie na pośladki i nogi', 'medium', 'b8c9d0e1-f2a3-4b5c-5d6e-7f8a9b0c1d2e'),
  ('78787878-7878-7878-7878-787878787878', 'Przysiady sumo', 'Ćwiczenie na pośladki i wewnętrzną część ud', 'medium', 'b8c9d0e1-f2a3-4b5c-5d6e-7f8a9b0c1d2e'),
  ('89898989-8989-8989-8989-898989898989', 'Odwodzenie nogi na maszynie', 'Izolowane ćwiczenie na pośladki', 'easy', 'b8c9d0e1-f2a3-4b5c-5d6e-7f8a9b0c1d2e'),
  ('9a9a9a9a-9a9a-9a9a-9a9a-9a9a9a9a9a9a', 'Prostowanie bioder w klęku (kickback)', 'Izolowane ćwiczenie na pośladki', 'easy', 'b8c9d0e1-f2a3-4b5c-5d6e-7f8a9b0c1d2e');
