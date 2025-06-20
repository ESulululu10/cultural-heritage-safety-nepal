Create database Final_Project;
Use Final_Project;
CREATE TABLE Temples_Heritage_Sites (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    `condition` VARCHAR(50),
    historical_significance TEXT
);
INSERT INTO Temples_Heritage_Sites (id, name, location, `condition`, historical_significance) VALUES
(1, 'Pashupatinath Temple', 'Kathmandu Valley, Nepal', 'Excellent', 'Pashupatinath is one of the holiest temples for Hindus, dedicated to Lord Shiva, and a UNESCO World Heritage Site.'),
(2, 'Boudhanath Stupa', 'Kathmandu, Nepal', 'Good', 'Boudhanath is a UNESCO World Heritage Site and one of the largest stupas in Nepal, a major center for Tibetan Buddhism.'),
(3, 'Swayambhunath Stupa', 'Kathmandu, Nepal', 'Fair', 'Known as the Monkey Temple, this stupa offers panoramic views of Kathmandu Valley and is an important Buddhist pilgrimage site.'),
(4, 'Lumbini', 'Lumbini, Nepal', 'Good', 'Lumbini is the birthplace of Siddhartha Gautama (Buddha) and an essential Buddhist pilgrimage site.'),
(5, 'Changu Narayan Temple', 'Bhaktapur District, Nepal', 'Excellent', 'Changu Narayan is one of the oldest Hindu temples still in use, dedicated to Lord Vishnu, and a UNESCO World Heritage Site.'),
(6, 'Muktinath Temple', 'Mustang District, Nepal', 'Good', 'Muktinath is a sacred temple for both Hindus and Buddhists, located in the Annapurna region and a popular pilgrimage site.'),
(7, 'Kailashnath Temple', 'Sankhu, Nepal', 'Good', 'Kailashnath is home to one of the tallest statues of Lord Shiva in the world.'),
(8, 'Patan Durbar Square', 'Lalitpur, Nepal', 'Excellent', 'Patan Durbar Square is a UNESCO World Heritage site, rich in ancient Hindu temples and palaces, including the famous Hiranya Varna Mahavihar.'),
(9, 'Dakshinkali Temple', 'Kathmandu Valley, Nepal', 'Good', 'Dakshinkali Temple is dedicated to the goddess Kali and is known for its animal sacrifices during festivals.'),
(10, 'Rani Pokhari Temple', 'Kathmandu, Nepal', 'Fair', 'Rani Pokhari is a historical pond and temple built by King Pratap Malla in the 17th century.'),
(11, 'Janaki Temple', 'Janakpur, Nepal', 'Excellent', 'Janaki Temple is dedicated to Goddess Sita, located in her birthplace, and an important pilgrimage site for Hindus.'),
(12, 'Bhadrakali Temple', 'Kathmandu Valley, Nepal', 'Good', 'Bhadrakali Temple is dedicated to the goddess Bhadrakali, with historical and religious importance in Hinduism.'),
(13, 'Gosaikunda Temple', 'Rasuwa District, Nepal', 'Good', 'Gosaikunda is a sacred alpine lake and temple, dedicated to Lord Shiva, located in Langtang National Park.'),
(14, 'Taleju Temple', 'Kathmandu Durbar Square, Nepal', 'Excellent', 'Taleju Temple is a significant Hindu temple dedicated to Goddess Taleju, located in the Kathmandu Durbar Square.'),
(15, 'Rangjung Gonkhar Monastery', 'Lho, Nepal', 'Good', 'Rangjung Gonkhar is a Tibetan Buddhist monastery known for its serene location and cultural significance.');

Select * from Temples_Heritage_Sites;

CREATE TABLE Artifacts (
    id INT PRIMARY KEY,
    artifact_name VARCHAR(100),
    artifact_type VARCHAR(50),
    value DECIMAL(10,2),
    location VARCHAR(100)
);
INSERT INTO Artifacts (id, artifact_name, artifact_type, value, location) VALUES
(1, 'Statue of Pashupati', 'Sculpture', 50000.00, 'Pashupatinath Temple'),
(2, 'Buddha Footprint', 'Stone Artifact', 10000.00, 'Lumbini'),
(3, 'Ancient Manuscripts', 'Document', 3000.00, 'Boudhanath Stupa'),
(4, 'Swayambhunath Idol', 'Sculpture', 20000.00, 'Swayambhunath Temple'),
(5, 'Bhaktapur Mural', 'Painting', 15000.00, 'Bhaktapur Durbar Square'),
(6, 'Kailashnath Bronze Statue', 'Sculpture', 25000.00, 'Kailashnath Temple'),
(7, 'Stone Carvings', 'Stone Art', 8000.00, 'Muktinath Temple'),
(8, 'Silver Ritual Bell', 'Metalwork', 5000.00, 'Changu Narayan Temple'),
(9, 'Rara Lake Ritual Vessel', 'Artifact', 12000.00, 'Rara Lake'),
(10, 'Ancient Coins', 'Coins', 7000.00, 'Kathmandu Durbar Square'),
(11, 'Golden Prayer Wheels', 'Metalwork', 22000.00, 'Patan Durbar Square'),
(12, 'Carved Wooden Door', 'Woodwork', 10000.00, 'Patan Durbar Square'),
(13, 'Tibetan Thangka Painting', 'Painting', 18000.00, 'Rangjung Gonkhar Monastery'),
(14, 'Gosaikunda Water Pot', 'Ceramic', 1500.00, 'Gosaikunda Lake'),
(15, 'Stone Tablet', 'Stone', 12000.00, 'Pokhara Valley');

select * from Artifacts;

DROP TABLE IF EXISTS Restoration_Projects;

CREATE TABLE Restoration_Projects (
    id INT PRIMARY KEY, -- Unique identifier for each restoration project
    project_name VARCHAR(100) NOT NULL, -- Name of the restoration project
    start_date DATE NOT NULL, -- When the project started
    end_date DATE, -- When the project ended (optional)
    budget DECIMAL(12, 2) NOT NULL, -- Budget allocated for the project
    status VARCHAR(50) NOT NULL, -- Current status of the project (e.g., Ongoing, Completed)
    site_id INT NOT NULL, -- Foreign key linking the project to a temple/heritage site
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id) -- Ensures integrity with Temples_Heritage_Sites
);
INSERT INTO Restoration_Projects (id, project_name, start_date, end_date, budget, status, site_id) VALUES
(1, 'Pashupatinath Renovation 2023', '2023-01-10', '2023-08-15', 500000.00, 'Completed', 1),
(2, 'Boudhanath Stupa Preservation', '2022-05-01', '2022-12-30', 300000.00, 'Completed', 2),
(3, 'Swayambhunath Stupa Repair', '2023-02-15', NULL, 200000.00, 'Ongoing', 3),
(4, 'Lumbini Peace Garden Expansion', '2023-06-01', '2023-11-30', 700000.00, 'Completed', 4),
(5, 'Changu Narayan Earthquake Repairs', '2021-03-20', '2021-10-10', 450000.00, 'Completed', 5),
(6, 'Muktinath Accessibility Improvement', '2023-04-01', NULL, 250000.00, 'Ongoing', 6),
(7, 'Kailashnath Lighting Project', '2022-08-15', '2023-02-01', 150000.00, 'Completed', 7),
(8, 'Patan Durbar Square Restoration', '2022-01-01', '2022-12-01', 600000.00, 'Completed', 8),
(9, 'Dakshinkali Infrastructure Upgrade', '2023-03-01', NULL, 180000.00, 'Ongoing', 9),
(10, 'Janaki Temple Painting', '2021-11-01', '2022-04-30', 120000.00, 'Completed', 11),
(11, 'Gosaikunda Pathway Repairs', '2023-05-01', NULL, 140000.00, 'Ongoing', 13),
(12, 'Taleju Temple Security Enhancement', '2022-09-01', '2023-03-15', 110000.00, 'Completed', 14),
(13, 'Rani Pokhari Fencing Project', '2022-12-01', '2023-06-30', 80000.00, 'Completed', 10),
(14, 'Bhadrakali Temple Structural Repairs', '2023-01-15', NULL, 130000.00, 'Ongoing', 12),
(15, 'Rangjung Gonkhar Monastery Revamp', '2023-07-01', NULL, 160000.00, 'Ongoing', 15);

select * from Restoration_Projects;

DROP TABLE IF EXISTS Researchers;
CREATE TABLE Researchers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    field_of_study VARCHAR(100),
    affiliation VARCHAR(100),
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id)
);

INSERT INTO Researchers (id, name, field_of_study, affiliation, site_id) VALUES
(1, 'Dr. Rajesh Shrestha', 'Archaeology', 'Tribhuvan University', 1),
(2, 'Dr. Sita Khadka', 'Cultural Preservation', 'Nepal National Museum', 2),
(3, 'Dr. Hari Kumar', 'Art History', 'Lumbini Buddhist Center', 4),
(4, 'Dr. Shyam Bhandari', 'Architecture', 'Kathmandu University', 3),
(5, 'Dr. Nirmala Tamang', 'History', 'Central Department of History', 5),
(6, 'Dr. Maya Lama', 'Cultural Anthropology', 'Nepal Academy of Science and Technology', 6),
(7, 'Dr. Jaya Shrestha', 'Architecture', 'International Center for Conservation', 7),
(8, 'Dr. Deepak Gurung', 'Archaeology', 'Kathmandu University', 8),
(9, 'Dr. Pradeep Bhattarai', 'Religious Studies', 'Pokhara University', 9),
(10, 'Dr. Ramesh Kharel', 'Anthropology', 'Patan Institute of Culture', 10),
(11, 'Dr. Manju Giri', 'History', 'Tribhuvan University', 11),
(12, 'Dr. Laxmi Sharma', 'Conservation', 'National Conservation Department', 12),
(13, 'Dr. Pramod Thapa', 'Buddhist Studies', 'Lumbini University', 13),
(14, 'Dr. Niranjan Sarki', 'Geography', 'Central Department of Geography', 14),
(15, 'Dr. Ratna Thapa', 'Cultural Studies', 'Nepal Academy of Arts', 15);

select * from Researchers;

DROP TABLE IF EXISTS Community_Violence_Incidents;
CREATE TABLE Community_Violence_Incidents (
    id INT PRIMARY KEY, -- Unique identifier for each incident
    site_id INT NOT NULL, -- Foreign key linking the incident to a heritage site
    incident_date DATE NOT NULL, -- Date the incident occurred
    incident_time TIME, -- Time the incident occurred (optional)
    type_of_incident VARCHAR(100) NOT NULL, -- E.g., Theft, Vandalism, Protest
    severity VARCHAR(50) NOT NULL, -- Severity level: Low, Medium, High, Critical
    description TEXT, -- Detailed description of the incident
    response_taken TEXT, -- Actions taken in response to the incident
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id) -- Links to the temples/heritage sites
);
INSERT INTO Community_Violence_Incidents 
(id, site_id, incident_date, incident_time, type_of_incident, severity, description, response_taken) 
VALUES
(1, 1, '2023-01-15', '14:30:00', 'Theft', 'Medium', 'A valuable idol was stolen from Pashupatinath Temple.', 'Police investigation launched, CCTV footage reviewed.'),
(2, 2, '2023-03-12', '10:00:00', 'Protest', 'Low', 'A peaceful protest occurred near Boudhanath regarding environmental concerns.', 'Authorities monitored the situation; no arrests were made.'),
(3, 3, '2023-05-20', '18:00:00', 'Vandalism', 'High', 'Graffiti was found on the main walls of Swayambhunath Stupa.', 'Walls repainted; security increased in the area.'),
(4, 5, '2022-11-25', '20:00:00', 'Arson', 'Critical', 'A small fire was intentionally set near Changu Narayan Temple.', 'Fire extinguished quickly; suspects detained.'),
(5, 4, '2023-02-17', '11:00:00', 'Protest', 'Medium', 'Religious tensions led to a protest near Lumbini.', 'Security forces deployed to manage the crowd.'),
(6, 9, '2023-04-05', '16:45:00', 'Assault', 'High', 'A tourist was assaulted near Dakshinkali Temple.', 'Victim treated; police arrested the suspect.'),
(7, 11, '2023-07-10', '09:30:00', 'Pickpocketing', 'Low', 'Multiple cases of pickpocketing were reported near Janaki Temple.', 'Police presence increased during peak hours.'),
(8, 8, '2023-06-15', '13:00:00', 'Theft', 'Medium', 'Artifacts were reported missing from a museum at Patan Durbar Square.', 'Investigation ongoing; museum inventory audited.'),
(9, 6, '2022-12-25', '22:00:00', 'Civil Unrest', 'Critical', 'Local political tensions led to violent clashes near Muktinath Temple.', 'Curfew imposed; additional police sent to the area.'),
(10, 10, '2023-09-01', '14:15:00', 'Protest', 'Low', 'A small protest about maintenance delays occurred near Rani Pokhari.', 'Issue addressed by local authorities.'),
(11, 14, '2023-08-20', '17:00:00', 'Vandalism', 'Medium', 'Unauthorized constructions damaged parts of Taleju Temple.', 'Construction halted; penalties imposed on violators.'),
(12, 13, '2023-10-12', '12:00:00', 'Theft', 'High', 'A group of thieves attempted to steal donations at Gosaikunda Temple.', 'Suspects detained by local police.'),
(13, 7, '2023-03-18', '15:30:00', 'Robbery', 'Critical', 'An armed robbery occurred at Kailashnath Temple, targeting donation boxes.', 'Robbers arrested; security strengthened.'),
(14, 12, '2023-02-01', '20:00:00', 'Assault', 'High', 'A devotee was assaulted during a night prayer session at Bhadrakali Temple.', 'Victim hospitalized; investigation ongoing.'),
(15, 15, '2023-09-05', '16:00:00', 'Vandalism', 'Low', 'Small carvings on the walls of Rangjung Gonkhar Monastery were defaced.', 'Wall restored; area under increased surveillance.');

select	* From Community_Violence_Incidents;

drop table if exists Local_Authorities ;
CREATE TABLE Local_Authorities (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    contact_info VARCHAR(100),
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id)
);

INSERT INTO Local_Authorities (id, name, role, contact_info, site_id) VALUES
(1, 'Arjun Rai', 'Chief Security Officer', 'arjun.rai@kathmandu.gov.np', 1),
(2, 'Sita Koirala', 'Restoration Coordinator', 'sita.koirala@bhaktapur.gov.np', 2),
(3, 'Pradeep Sharma', 'Cultural Affairs Officer', 'pradeep.sharma@pokhara.gov.np', 3),
(4, 'Hari Bhattarai', 'Police Inspector', 'hari.bhattarai@lumbini.gov.np', 4),
(5, 'Nirmala Joshi', 'Heritage Conservation Specialist', 'nirmala.joshi@kathmandu.gov.np', 5),
(6, 'Bishal Shrestha', 'Site Manager', 'bishal.shrestha@patan.gov.np', 6),
(7, 'Ramesh Subedi', 'Security Officer', 'ramesh.subedi@kathmandu.gov.np', 7),
(8, 'Rina Gurung', 'Heritage Site Custodian', 'rina.gurung@bhaktapur.gov.np', 8),
(9, 'Deepak Thapa', 'Law Enforcement Officer', 'deepak.thapa@mustang.gov.np', 9),
(10, 'Raju Bhandari', 'Cultural Preservation Officer', 'raju.bhandari@patan.gov.np', 10),
(11, 'Manju Sharma', 'Historical Research Supervisor', 'manju.sharma@bhaktapur.gov.np', 11),
(12, 'Jaya Thapa', 'Security Advisor', 'jaya.thapa@pokhara.gov.np', 12),
(13, 'Suman Rijal', 'Project Manager', 'suman.rijal@rasuwa.gov.np', 13),
(14, 'Anil Khadka', 'District Officer', 'anil.khadka@rasuwa.gov.np', 14),
(15, 'Laxmi Rai', 'Cultural Safety Coordinator', 'laxmi.rai@lalitpur.gov.np', 15);

select * from Local_Authorities;

drop table if exists Funding_Agencies;

CREATE TABLE Funding_Agencies (
    id INT PRIMARY KEY,
    agency_name VARCHAR(100),
    type VARCHAR(50),
    funding_amount DECIMAL(10, 2),
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id)
);

INSERT INTO Funding_Agencies (id, agency_name, type, funding_amount, site_id) VALUES
(1, 'Nepal Government', 'Government', 500000.00, 1),
(2, 'UNESCO', 'International Organization', 300000.00, 2),
(3, 'World Bank', 'International Organization', 200000.00, 3),
(4, 'Asian Development Bank', 'International Organization', 100000.00, 4),
(5, 'Korea Aid', 'NGO', 150000.00, 5),
(6, 'Nepal Tourism Board', 'Government', 250000.00, 6),
(7, 'Ford Foundation', 'NGO', 80000.00, 7),
(8, 'Save the Heritage Fund', 'Private Organization', 120000.00, 8),
(9, 'European Union', 'International Organization', 500000.00, 9),
(10, 'USAID', 'International Organization', 350000.00, 10),
(11, 'UNDP', 'International Organization', 400000.00, 11),
(12, 'Global Heritage Fund', 'Private Organization', 70000.00, 12),
(13, 'Nepal Archaeological Society', 'NGO', 60000.00, 13),
(14, 'The World Monuments Fund', 'International Organization', 300000.00, 14),
(15, 'Swiss Embassy', 'Government', 100000.00, 15);

select * from Funding_Agencies;

drop table if exists Events;
CREATE TABLE Events (
    id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_type VARCHAR(50),
    event_date DATE,
    attendees INT,
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id)
);

INSERT INTO Events (id, event_name, event_type, event_date, attendees, site_id) VALUES
(1, 'Shivaratri Festival', 'Cultural', '2023-02-27', 10000, 1),
(2, 'Buddha Jayanti', 'Religious', '2023-04-15', 5000, 2),
(3, 'Swayambhunath New Year Celebration', 'Cultural', '2023-01-01', 3000, 3),
(4, 'Lumbini Peace March', 'Religious', '2023-05-06', 4000, 4),
(5, 'Bhaktapur Durbar Square Anniversary', 'Cultural', '2023-06-10', 2000, 5),
(6, 'Kathmandu Durbar Square Annual Festival', 'Cultural', '2023-07-15', 3500, 6),
(7, 'Rara Lake Clean-Up Event', 'Environmental', '2023-08-20', 1500, 7),
(8, 'Changu Narayan Cultural Program', 'Cultural', '2023-09-01', 2500, 8),
(9, 'Muktinath Pilgrimage Walk', 'Religious', '2023-04-10', 6000, 9),
(10, 'Kailashnath Temple Dedication', 'Religious', '2023-05-05', 1000, 10),
(11, 'Patan Durbar Square Heritage Exhibition', 'Cultural', '2023-06-15', 3000, 11),
(12, 'Nagarkot Sunrise View', 'Tourist Event', '2023-07-30', 500, 12),
(13, 'Pokhara Valley Boat Race', 'Cultural', '2023-09-10', 1200, 13),
(14, 'Gosaikunda Lake Pilgrimage', 'Religious', '2023-08-05', 2500, 14),
(15, 'Rangjung Gonkhar Monastery Prayer Event', 'Religious', '2023-06-25', 1500, 15);

select * from Events;

drop table if exists Tourists_and_Visitors;

CREATE TABLE Tourists_and_Visitors (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    nationality VARCHAR(50),
    visit_date DATE,
    feedback TEXT,
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id)
);

INSERT INTO Tourists_and_Visitors (id, name, nationality, visit_date, feedback, site_id) VALUES
(1, 'John Smith', 'USA', '2023-05-01', 'Incredible experience, very informative', 1),
(2, 'Maria Fernandez', 'Spain', '2023-04-10', 'Beautiful architecture, loved the culture', 2),
(3, 'Li Wei', 'China', '2023-07-21', 'Very peaceful, but crowded', 3),
(4, 'Sofia Petrova', 'Russia', '2023-06-19', 'Interesting history, would recommend', 4),
(5, 'Ahmed Khan', 'Pakistan', '2023-08-05', 'A serene place, great for meditation', 5),
(6, 'Yuki Tanaka', 'Japan', '2023-09-12', 'Loved the view, but the walk was tiring', 6),
(7, 'Liam O’Connor', 'Ireland', '2023-07-16', 'Amazing temple, a must-see for anyone in Nepal', 7),
(8, 'Hannah Mitchell', 'UK', '2023-05-24', 'A great cultural experience', 8),
(9, 'Felipe Garcia', 'Brazil', '2023-08-02', 'Great place for history lovers', 9),
(10, 'Olivia Jensen', 'Denmark', '2023-06-18', 'The site was a bit commercialized but still beautiful', 10),
(11, 'Haruto Nakamura', 'Japan', '2023-09-30', 'Such a calm and spiritual atmosphere', 11),
(12, 'Eva Muller', 'Germany', '2023-05-09', 'Lovely temples and a rich history', 12),
(13, 'David White', 'USA', '2023-08-13', 'The place was very busy with tourists', 13),
(14, 'Olga Ivanova', 'Russia', '2023-07-22', 'Great views and good food nearby', 14),
(15, 'Nina Schmidt', 'Germany', '2023-09-10', 'Very well preserved and informative', 15);

select * from Tourists_and_Visitors;

drop table if exists Digital_Archives;

CREATE TABLE Digital_Archives (
    id INT PRIMARY KEY,
    archive_name VARCHAR(100),
    archive_type VARCHAR(50),
    file_path VARCHAR(255),
    site_id INT,
    FOREIGN KEY (site_id) REFERENCES Temples_Heritage_Sites(id)
);

INSERT INTO Digital_Archives (id, archive_name, archive_type, file_path, site_id) VALUES
(1, 'Swayambhunath Temple Image Collection', 'Image', '/archives/swayambhunath_images.zip', 1),
(2, 'Bhaktapur Durbar Square Historical Records', 'Document', '/archives/bhaktapur_docs.zip', 2),
(3, 'Lumbini Sacred Sites Architectural Plans', 'Drawing', '/archives/lumbini_plans.zip', 3),
(4, 'Pokhara Valley Preservation Reports', 'Report', '/archives/pokhara_reports.zip', 4),
(5, 'Rara Lake Environmental Studies', 'Report', '/archives/rara_lake_studies.zip', 5),
(6, 'Patan Durbar Square Site Conditions', 'Image', '/archives/patan_conditions.zip', 6),
(7, 'Nagarkot Sunrise Preservation Video', 'Video', '/archives/nagarkot_video.zip', 7),
(8, 'Muktinath Monastery Architectural Survey', 'Drawing', '/archives/muktinath_survey.zip', 8),
(9, 'Kailashnath Temple Construction Diaries', 'Document', '/archives/kailashnath_diaries.zip', 9),
(10, 'Gosaikunda Pilgrimage Records', 'Document', '/archives/gosaikunda_records.zip', 10),
(11, 'Rangjung Gonkhar Monastery Restoration Project', 'Report', '/archives/rangjung_restoration.zip', 11),
(12, 'Swayambhunath Preservation Videos', 'Video', '/archives/swayambhunath_videos.zip', 12),
(13, 'Bhaktapur Durbar Square Conservation Studies', 'Report', '/archives/bhaktapur_conservation.zip', 13),
(14, 'Lumbini Peace March Documentation', 'Document', '/archives/lumbini_peace.zip', 14),
(15, 'Pokhara Valley Pilgrimage Feedback', 'Survey', '/archives/pokhara_feedback.zip', 15);

Select * From Digital_Archives;
