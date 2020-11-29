CREATE TABLE flats (
    flat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    owmer_id INTEGER,
    price INTEGER NOT NULL CHECK (price > 0),
    floor INTEGER NOT NULL,
    rooms INTEGER NOT NULL CHECK (rooms > 0),
    district text NOT NULL,
    station_id INTEGER NOT NULL REFERENCES stations (station_id)
);

CREATE TABLE owners (
    owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE stations (
    station_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);


