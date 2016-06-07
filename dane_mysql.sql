USE studXXXXX;


DROP TABLE IF EXISTS `etaty`;
CREATE TABLE `etaty` (
  `NAZWA` varchar(10) NOT NULL default '',
  `PLACA_OD` decimal(6,2) default NULL,
  `PLACA_DO` decimal(6,2) default NULL,
  PRIMARY KEY  (`NAZWA`)
) TYPE=MyISAM;

INSERT INTO `etaty` (`NAZWA`, `PLACA_OD`, `PLACA_DO`) 
VALUES 
('PROFESOR', 3000.00, 4000.00),
('ADIUNKT', 2510.00, 3000.00),
('ASYSTENT', 1500.00, 2100.00),
('DOKTORANT', 800.00, 1000.00),
('SEKRETARKA', 1470.00, 1650.00),
('DYREKTOR', 4280.00, 5100.00);


DROP TABLE IF EXISTS `pracownicy`;
CREATE TABLE `pracownicy` (
  `ID_PRAC` decimal(4,0) NOT NULL default '0',
  `NAZWISKO` varchar(15) default NULL,
  `IMIE` varchar(15) default NULL,
  `ETAT` varchar(10) default NULL,
  `ID_SZEFA` decimal(4,0) default NULL,
  `ZATRUDNIONY` date default NULL,
  `PLACA_POD` decimal(6,2) default NULL,
  `PLACA_DOD` decimal(6,2) default NULL,
  `ID_ZESP` decimal(2,0) default NULL,
  PRIMARY KEY  (`ID_PRAC`)
) TYPE=MyISAM;

INSERT INTO `pracownicy` (`ID_PRAC`, `NAZWISKO`, `IMIE`, `ETAT`, `ID_SZEFA`, `ZATRUDNIONY`, `PLACA_POD`, `PLACA_DOD`, `ID_ZESP`) 
VALUES 
(100, 'Marecki', 'Jan', 'DYREKTOR', NULL, '1968-01-01', 4730.00, 980.50, 10),
(110, 'Janicki', 'Karol', 'PROFESOR', 100, '1973-05-01', 3350.00, 610.00, 40),
(120, 'Nowicki', 'Pawel', 'PROFESOR', 100, '1977-09-01', 3070.00, NULL, 30),
(130, 'Nowak', 'Piotr', 'PROFESOR', 100, '1968-07-01', 3960.00, NULL, 20),
(140, 'Kowalski', 'Krzysztof', 'PROFESOR', 130, '1975-09-15', 3230.00, 805.00, 20),
(150, 'Grzybowska', 'Maria', 'ADIUNKT', 130, '1977-09-01', 2845.50, NULL, 20),
(160, 'Krakowska', 'Joanna', 'SEKRETARKA', 130, '1985-03-01', 1590.00, NULL, 20),
(170, 'Opolski', 'Roman', 'ASYSTENT', 130, '1992-10-01', 1839.70, 480.50, 20),
(190, 'Kotarski', 'Konrad', 'ASYSTENT', 140, '1993-09-01', 1971.00, NULL, 20),
(180, 'Makowski', 'Marek', 'ADIUNKT', 100, '1985-02-20', 2610.20, NULL, 10),
(200, 'Przywarek', 'Leon', 'DOKTORANT', 140, '1994-07-15', 900.00, NULL, 30),
(210, 'Kotlarczyk', 'Stefan', 'DOKTORANT', 130, '1993-10-15', 900.00, 570.60, 30),
(220, 'Siekierski', 'Mateusz', 'ASYSTENT', 110, '1993-10-01', 1889.00, NULL, 20),
(230, 'Dolny', 'Tomasz', 'ASYSTENT', 120, '1992-09-01', 1850.00, 390.00, NULL);


DROP TABLE IF EXISTS `zespoly`;
CREATE TABLE `zespoly` (
  `ID_ZESP` decimal(2,0) default NULL,
  `NAZWA` varchar(20) default NULL,
  `ADRES` varchar(20) default NULL
) TYPE=MyISAM;

INSERT INTO `zespoly` (`ID_ZESP`, `NAZWA`, `ADRES`) 
VALUES 
(10, 'ADMINISTRACJA', 'PIOTROWO 2'),
(20, 'SYSTEMY ROZPROSZONE', 'PIOTROWO 3A'),
(30, 'SYSTEMY EKSPERCKIE', 'STRZELECKA 14'),
(40, 'ALGORYTMY', 'WIENIAWSKIEGO 16'),
(50, 'BADANIA OPERACYJNE', 'MIELZYNSKIEGO 30');