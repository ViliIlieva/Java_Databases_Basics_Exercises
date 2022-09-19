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
