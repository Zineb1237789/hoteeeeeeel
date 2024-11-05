CREATE TABLE room (
    roomno varchar(255) primary key auto_increment,
    rtype VARCHAR(255),
    btype VARCHAR(255),
    amount DECIMAL(10, 2)
);
CREATE TABLE reservation (
    reid varchar(255) auto_increment PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    mobile VARCHAR(15),
    checkin DATE,
    checkout DATE,
    bedtype VARCHAR(50),
    roomno INT,
    rtype VARCHAR(50),
    amount DECIMAL(10, 2),
    CONSTRAINT pk_roomno
    FOREIGN KEY (roomno) 
    REFERENCES room (roomno)
);
CREATE TABLE user (
   id_user varchar(255) primary key,
    name VARCHAR(255),
    username VARCHAR(255) primary key,
    password VARCHAR(255)
);
CREATE TABLE CHAUFFEUR (
    nom_chauffeur VARCHAR(255) primary key,
    chAge INT,
    chSexe VARCHAR(1), -- Assuming 'M' for male, 'F' for female
    location VARCHAR(255),
    disponibilite BOOLEAN, -- Assuming availability can be represented as a boolean
    marque VARCHAR(255),
    compagnie VARCHAR(255),
    id_user varchar(255), -- Foreign key referencing client id
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE REPAS (
    id_repas varchar(255) PRIMARY KEY,
    nom_repas VARCHAR(255),
    prix_repas DECIMAL(10, 2), -- Assuming price can have up to 10 digits with 2 decimal places
    id_user varchar(255), -- Foreign key referencing client id
    date_commande DATE, -- Assuming date of order
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE EMPLOYE(
    Enom VARCHAR(255),
    Eage INT,
    Esexe VARCHAR(1), -- Assuming 'M' for male, 'F' for female
    Esalaire DECIMAL(10, 2), -- Assuming salary can have up to 10 digits with 2 decimal places
    Enumero VARCHAR(20),
    Eadresse_mail VARCHAR(255),
    Eidentifiant VARCHAR(255),
    Efonction VARCHAR(255),
    nom_departement VARCHAR(255), -- Foreign key referencing department name
    FOREIGN KEY (nom_departement) REFERENCES DEPARTEMENT(nom_departement)
);

CREATE TABLE DEPARTEMENT (
    nom_departement VARCHAR(255) PRIMARY KEY,
    budget DECIMAL(12, 2) -- Assuming budget can have up to 12 digits with 2 decimal places
);

