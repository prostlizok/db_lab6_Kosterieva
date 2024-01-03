-- Create the 'champions' table
CREATE TABLE champions (
    championID SERIAL PRIMARY KEY,
    champion_name VARCHAR(255) NOT NULL
);

-- Create the 'matches' table
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    duration INT,
    platformid VARCHAR(50),
    seasonid INT
);

-- Create the 'participants' table
CREATE TABLE participants (
    ID SERIAL PRIMARY KEY,
    matchID INT,
    player INT,
    championID INT,
    role VARCHAR(50),
    position VARCHAR(50),
    FOREIGN KEY (matchID) REFERENCES matches(id),
    FOREIGN KEY (championID) REFERENCES champions(championID)
);

ALTER TABLE champions ADD CONSTRAINT unique_champion_name UNIQUE (champion_name);

ALTER TABLE matches ADD CONSTRAINT check_duration CHECK (duration > 0);

ALTER TABLE participants ALTER COLUMN role SET DEFAULT 'UNKNOWN';
