1. Mountains and Peaks
CREATE TABLE mountains (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50)
);

CREATE TABLE peaks (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
`mountain_id` INT,
CONSTRAINT fk_peaks_mountains
FOREIGN KEY (mountain_id)
REFERENCES mountains(id)
);

2. Trip Organization
select campers.id,vehicles.vehicle_type, concat_ws(' ',campers.first_name, campers.last_name) as driver_name 
from campers 
join vehicles  on
vehicles.driver_id = campers.id;

3. SoftUni Hiking
select routes.starting_point as 'route_starting_point',
routes.end_point as 'route_ending_point',
routes.leader_id,
concat_ws(' ',campers.first_name, campers.last_name) as leader_name 
from campers 
join routes  on
routes.leader_id = campers.id;


4. Delete Mountains
CREATE TABLE mountains (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50)
);

CREATE TABLE peaks (
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
`mountain_id` INT,
CONSTRAINT fk_peaks_mountains
FOREIGN KEY (mountain_id)
REFERENCES mountains(id)
on DELETE CASCADE
);
