-- Create database
CREATE DATABASE g20_climate;
USE g20_climate;

-- Countries table
CREATE TABLE Country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    iso_code   CHAR(3) NOT NULL UNIQUE,
    is_g20     BOOLEAN NOT NULL DEFAULT 1
) ENGINE=InnoDB;

-- Emissions table
CREATE TABLE Emission (
    emission_id INT AUTO_INCREMENT PRIMARY KEY,
    country_id  INT NOT NULL,
    year        YEAR NOT NULL,
    co2_mt      DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_emission_country
        FOREIGN KEY (country_id)
        REFERENCES Country(country_id)
        ON DELETE CASCADE
) ENGINE=InnoDB;

-- NDC table
CREATE TABLE NDC (
    ndc_id              INT AUTO_INCREMENT PRIMARY KEY,
    country_id          INT NOT NULL,
    ndc_version         VARCHAR(50),
    submission_year     YEAR,
    target_year         YEAR NOT NULL,
    base_year           YEAR,
    reduction_percent   DECIMAL(5,2),
    target_emissions_mt DECIMAL(10,2),
    notes               TEXT,
    CONSTRAINT fk_ndc_country
        FOREIGN KEY (country_id)
        REFERENCES Country(country_id)
        ON DELETE CASCADE
) ENGINE=InnoDB;
