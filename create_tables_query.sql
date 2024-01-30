-- MySQL Workbench 8.0 CE
-- Music Store Database (music_store_database)
-- My GitHub Link: https://github.com/kawserabdullah

-- Creat Database
DROP DATABASE IF EXISTS music_store_database;
CREATE DATABASE music_store_database;
USE music_store_database;

CREATE TABLE employee (
    employee_id VARCHAR(50) PRIMARY KEY,
    last_name CHAR(50),
    first_name CHAR(50),
    title VARCHAR(50),
    reports_to VARCHAR(30),
    levels VARCHAR(10),
    birthdate DATETIME,
    hire_date DATETIME,
    address VARCHAR(120),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(30),
    postal_code VARCHAR(30),
    phone VARCHAR(30),
    fax VARCHAR(30),
    email VARCHAR(30)
);

CREATE TABLE customer (
    customer_id VARCHAR(30) PRIMARY KEY,
    first_name CHAR(30),
    last_name CHAR(30),
    company VARCHAR(30),
    address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    country VARCHAR(30),
    postal_code VARCHAR(30),  
    phone VARCHAR(30),        
    fax VARCHAR(30),        
    email VARCHAR(30),
    support_rep_id VARCHAR(30)
);

CREATE TABLE invoice (
    invoice_id VARCHAR(30) PRIMARY KEY,
    customer_id VARCHAR(30),
    invoice_date DATETIME,
    billing_address VARCHAR(120),
    billing_city VARCHAR(30),
    billing_state VARCHAR(30),
    billing_country VARCHAR(30),
    billing_postal VARCHAR(30),  
    total DECIMAL(10,2)         
);

CREATE TABLE invoice_line (
    invoice_line_id VARCHAR(50) PRIMARY KEY,
    invoice_id VARCHAR(30),
    track_id VARCHAR(30),
    unit_price DECIMAL(10,2),  
    quantity INT               
);

CREATE TABLE track (
    track_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30),
    album_id VARCHAR(30),
    media_type_id VARCHAR(30),
    genre_id VARCHAR(30),
    composer VARCHAR(30),
    milliseconds INT,       
    bytes INT,           
    unit_price DECIMAL(10,2)
);

CREATE TABLE playlist (
    playlist_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE playlist_track (
    playlist_id VARCHAR(50),
    track_id VARCHAR(50),
    PRIMARY KEY (playlist_id, track_id)
);

CREATE TABLE artist (
    artist_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE album (
    album_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(30),
    artist_id VARCHAR(50), 
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)  
);

CREATE TABLE media_type (
    media_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE genre (
    genre_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);
