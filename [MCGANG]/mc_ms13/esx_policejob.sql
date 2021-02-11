

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_vermillion', 'vermillion', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_vermillion', 'vermillion', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_vermillion', 'vermillion', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('vermillion', 'Vermillion')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('vermillion',0,'recruit','Recruit',20,'{}','{}'),
	('vermillion',1,'officer','Soldiers',40,'{}','{}'),
	('vermillion',2,'sergeant','Capo',60,'{}','{}'),
	('vermillion',3,'lieutenant','Asst. Boss',85,'{}','{}'),
	('vermillion',4,'boss','Boss',100,'{}','{}')
;
