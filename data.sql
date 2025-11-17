-- Insert sample G20 countries
INSERT INTO Country (name, iso_code) VALUES
('Australia', 'AUS'),
('Brazil',    'BRA'),
('China',     'CHN'),
('France',    'FRA'),
('Japan',     'JPN');

-- Emissions data (simplified)
INSERT INTO Emission (country_id, year, co2_mt) VALUES
(1, 2010, 390.0), (1, 2013, 410.0), (1, 2016, 400.0), (1, 2019, 380.0), (1, 2022, 360.0),
(2, 2010, 420.0), (2, 2013, 430.0), (2, 2016, 440.0), (2, 2019, 435.0), (2, 2022, 430.0),
(3, 2010, 7800.0), (3, 2013, 8200.0), (3, 2016, 8400.0), (3, 2019, 8600.0), (3, 2022, 8700.0),
(4, 2010, 350.0), (4, 2013, 330.0), (4, 2016, 310.0), (4, 2019, 290.0), (4, 2022, 270.0),
(5, 2010, 1200.0), (5, 2013, 1250.0), (5, 2016, 1150.0), (5, 2019, 1100.0), (5, 2022, 1050.0);

-- NDC data (simplified examples)
INSERT INTO NDC (country_id, ndc_version, submission_year,
                 target_year, base_year, reduction_percent, target_emissions_mt, notes)
VALUES
(1, 'Updated 2020', 2020, 2030, 2005, 26.00, 320.0, 'Simplified target'),
(2, 'First NDC',    2016, 2030, 2005, 37.00, 300.0, 'Simplified target'),
(3, 'Updated 2021', 2021, 2030, 2005, 65.00, 7000.0,'Simplified target'),
(4, 'Updated 2020', 2020, 2030, 1990, 40.00, 240.0, 'Simplified target'),
(5, 'Updated 2020', 2020, 2030, 2013, 46.00, 800.0, 'Simplified target');
