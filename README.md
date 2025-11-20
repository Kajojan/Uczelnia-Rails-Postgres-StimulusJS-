# Uczelnia 

## Opis

Aplikacja webowa stworzona w **Ruby on Rails**, pozwalająca na zarządzanie uczelnią.  
W projekcie zastosowano **StimulusJS** i **Tailwind CSS** dla interaktywnych elementów i responsywnego UI.  
Posiada także panel administracyjny dla zarządzania danymi.

---

## Funkcjonalności

### Użytkownicy
- **Teacher** – może tworzyć kursy i wystawiać oceny studentom.
- **Student** – może zapisać się na kurs i przeglądać swoje oceny.
- **Admin** – pełny dostęp do panelu administracyjnego.


## Konta testowe

W projekcie dostępne są przykładowe konta użytkowników do celów testowych i demo.


| Rola      | Imię       | Nazwisko   | Email                  | Hasło   |
|-----------|------------|------------|-----------------------|---------|
| Teacher   | Jan        | Kowalski   | kowalski@test.com     | Kowalski  |
| Student   | Kajetan    | Jankowski  | jankowski@test.com    | kajetan123  |
| Student   | Paweł      | Kowalski   | pawel@test.com        | 123456  |
| Admin     | admin      | admin      | admin@test.com        | admin  |

---
### Kursy
- Tworzenie, przeglądanie i zarządzanie kursami.
- Podgląd studentów zapisanych na kurs.
- Sortowanie kursów po nazwie oraz kodzie 

### Oceny
- Teacher może:
  - Dodawać oceny do studentów w kursie.
  - Edytować i usuwać istniejące oceny.
  - Dodawać opis do każdej oceny (`grade_desc`).
- Student widzi swoje oceny w tabeli.
- Sortowanie ocen po wartości, opisie i dacie.


### Panel administracyjny
- Dostępny dla użytkowników z rolą `admin`.
- Zarządzanie wszystkimi kursami, użytkownikami i ocenami.
- Wygenerowany przez gem **Administrate**.

---
## Uruchomienie
```bash
docker compose up
```
