-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: my-sql
-- Creato il: Giu 21, 2024 alle 08:23
-- Versione del server: 8.3.0
-- Versione PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prenotazioni`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente`
--

CREATE TABLE `dipendente` (
                              `id_dipendente` bigint NOT NULL,
                              `cognome` varchar(255) DEFAULT NULL,
                              `data_di_nascita` datetime(6) DEFAULT NULL,
                              `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `dipendente`
--

INSERT INTO `dipendente` (`id_dipendente`, `cognome`, `data_di_nascita`, `nome`) VALUES
                                                                                     (1, 'Ruecker', '1966-08-17 05:12:02.257874', 'Lenny'),
                                                                                     (2, 'Spinka', '1981-07-15 20:55:58.544751', 'Chase'),
                                                                                     (3, 'Denesik', '1970-07-20 10:42:21.972296', 'Shaniqua'),
                                                                                     (4, 'Wunsch', '2001-07-25 19:03:06.011681', 'Margarita'),
                                                                                     (5, 'Luettgen', '1995-04-20 08:33:27.846719', 'Dorian'),
                                                                                     (6, 'White', '1959-07-10 19:24:39.012174', 'Carol'),
                                                                                     (7, 'Johnson', '1997-03-13 16:10:00.160458', 'Edmond'),
                                                                                     (8, 'Predovic', '1995-08-31 05:00:48.369717', 'Brooke'),
                                                                                     (9, 'Jacobi', '1986-09-02 14:46:30.323855', 'Miguel'),
                                                                                     (10, 'Ankunding', '1988-07-04 11:33:05.602834', 'Johnson'),
                                                                                     (11, 'Ritchie', '1998-10-17 05:15:17.964208', 'Katherin'),
                                                                                     (12, 'Goyette', '1990-07-04 17:53:29.903513', 'Ali'),
                                                                                     (13, 'Nitzsche', '1976-05-29 13:17:06.195632', 'Vannesa'),
                                                                                     (14, 'Walker', '1986-08-22 07:54:54.011764', 'Pete'),
                                                                                     (15, 'Klein', '1972-07-21 03:49:57.292335', 'Jamika'),
                                                                                     (16, 'Hauck', '1965-12-31 09:15:50.740972', 'Ebony'),
                                                                                     (17, 'Bailey', '1994-07-28 20:12:10.864970', 'Emilia'),
                                                                                     (18, 'Botsford', '1963-03-01 07:34:51.491340', 'Abe'),
                                                                                     (19, 'Kulas', '1982-01-14 02:53:43.318696', 'Allan'),
                                                                                     (20, 'Donnelly', '1966-06-19 07:02:55.543133', 'Cassandra'),
                                                                                     (21, 'Leannon', '1970-04-29 12:57:12.623942', 'Faith'),
                                                                                     (22, 'Gottlieb', '1978-10-07 10:34:34.295351', 'Olen'),
                                                                                     (23, 'Schumm', '1961-09-17 17:24:05.301293', 'Simon'),
                                                                                     (24, 'Tillman', '1961-02-09 10:33:11.762911', 'Domingo'),
                                                                                     (25, 'Pfannerstill', '1973-03-07 09:32:13.293016', 'Hans'),
                                                                                     (26, 'Shanahan', '1968-10-26 03:38:05.504812', 'Claudie'),
                                                                                     (27, 'Hagenes', '1962-03-11 04:32:56.073849', 'Estella'),
                                                                                     (28, 'Lemke', '1987-07-26 02:42:43.889949', 'Brigette'),
                                                                                     (29, 'Rodriguez', '1996-05-14 02:31:21.566319', 'Margaret'),
                                                                                     (30, 'Blick', '1982-03-29 16:18:39.489987', 'Sanford'),
                                                                                     (31, 'Zulauf', '1964-08-14 15:28:01.946455', 'Emanuel'),
                                                                                     (32, 'Christiansen', '1984-06-21 13:58:43.141854', 'Luann'),
                                                                                     (33, 'Kreiger', '1994-03-19 19:34:59.905377', 'Fe'),
                                                                                     (34, 'Upton', '1959-05-10 06:56:46.979925', 'Haywood'),
                                                                                     (35, 'Smith', '1990-10-06 08:01:23.037954', 'Jessia');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente_dettagli`
--

CREATE TABLE `dipendente_dettagli` (
                                       `id_dipendente` bigint NOT NULL,
                                       `citta_ubicazione` varchar(255) DEFAULT NULL,
                                       `email` varchar(255) DEFAULT NULL,
                                       `indirizzo_ubicazione` varchar(255) DEFAULT NULL,
                                       `numero_telefonico` varchar(255) DEFAULT NULL,
                                       `sesso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `dipendente_dettagli`
--

INSERT INTO `dipendente_dettagli` (`id_dipendente`, `citta_ubicazione`, `email`, `indirizzo_ubicazione`, `numero_telefonico`, `sesso`) VALUES
                                                                                                                                           (1, 'Chiquitafort', 'Lenny.Ruecker@yahoo.com', '807 Octavio Wells', '+1 878-901-2680 x4905', 'Genderfluid'),
                                                                                                                                           (2, 'New Jacksonfurt', 'Chase.Spinka@gmail.com', '05450 Shavonda Hills', '+1 843-419-2727', 'Female'),
                                                                                                                                           (3, 'Rutherfordport', 'Shaniqua.Denesik@hotmail.com', '17467 Elene Grove', '+1 907-513-0928 x5416', 'Genderqueer'),
                                                                                                                                           (4, 'West Deweyhaven', 'Margarita.Wunsch@gmail.com', '25158 Ferry Square', '+1 406-936-1701 x1214', 'Genderfluid'),
                                                                                                                                           (5, 'Hintzfort', 'Dorian.Luettgen@hotmail.com', '597 Beckie Highway', '+1 276-205-0156', 'Genderfluid'),
                                                                                                                                           (6, 'Chiquitafort', 'Carol.White@yahoo.com', '2501 Petronila Mews', '+1 847-906-8657 x8532', 'Genderfluid'),
                                                                                                                                           (7, 'New Jacksonfurt', 'Edmond.Johnson@gmail.com', '1709 Shae Circle', '+1 502-863-3869', 'Polygender'),
                                                                                                                                           (8, 'Rutherfordport', 'Brooke.Predovic@gmail.com', '56649 Dean Locks', '+1 434-320-0733', 'Male'),
                                                                                                                                           (9, 'West Deweyhaven', 'Miguel.Jacobi@hotmail.com', '61468 Bednar Parkway', '+1 217-763-5824 x0537', 'Bigender'),
                                                                                                                                           (10, 'Hintzfort', 'Johnson.Ankunding@hotmail.com', '04756 Bernhard Run', '+1 912-580-0951', 'NonBinary'),
                                                                                                                                           (11, 'Chiquitafort', 'Katherin.Ritchie@gmail.com', '948 Winford Vista', '+1 808-445-9959 x3572', 'Bigender'),
                                                                                                                                           (12, 'New Jacksonfurt', 'Ali.Goyette@gmail.com', '527 Robel Dale', '+1 213-212-2960', 'Female'),
                                                                                                                                           (13, 'Rutherfordport', 'Vannesa.Nitzsche@gmail.com', '833 Zelda Wells', '+1 814-585-1893', 'NonBinary'),
                                                                                                                                           (14, 'West Deweyhaven', 'Pete.Walker@yahoo.com', '3462 Kenyetta Wall', '+1 252-407-3577 x4748', 'Female'),
                                                                                                                                           (15, 'Hintzfort', 'Jamika.Klein@hotmail.com', '886 Karla Rue', '+1 703-856-9857', 'Polygender'),
                                                                                                                                           (16, 'Chiquitafort', 'Ebony.Hauck@yahoo.com', '7437 Blanda Way', '+1 985-336-1365', 'Genderfluid'),
                                                                                                                                           (17, 'New Jacksonfurt', 'Emilia.Bailey@yahoo.com', '17117 Gutmann Knoll', '+1 251-623-1370 x7471', 'Genderqueer'),
                                                                                                                                           (18, 'Rutherfordport', 'Abe.Botsford@hotmail.com', '18242 Teddy Row', '+1 980-906-5889', 'Genderqueer'),
                                                                                                                                           (19, 'West Deweyhaven', 'Allan.Kulas@gmail.com', '97160 Erasmo Shores', '+1 573-321-0260', 'Polygender'),
                                                                                                                                           (20, 'Hintzfort', 'Cassandra.Donnelly@gmail.com', '7411 Johns Corner', '+1 360-678-8137', 'Agender'),
                                                                                                                                           (21, 'Chiquitafort', 'Faith.Leannon@hotmail.com', '691 Jeromy Light', '+1 352-479-5635 x3742', 'NonBinary'),
                                                                                                                                           (22, 'New Jacksonfurt', 'Olen.Gottlieb@hotmail.com', '2301 Upton Gardens', '+1 508-614-8464 x1078', 'NonBinary'),
                                                                                                                                           (23, 'Rutherfordport', 'Simon.Schumm@gmail.com', '70104 Dare Lane', '+1 580-772-2317', 'Agender'),
                                                                                                                                           (24, 'West Deweyhaven', 'Domingo.Tillman@yahoo.com', '762 Alexandria Cove', '+1 704-212-9464 x6520', 'Genderfluid'),
                                                                                                                                           (25, 'Hintzfort', 'Hans.Pfannerstill@gmail.com', '232 Cartwright Fords', '+1 947-719-2525', 'Genderfluid'),
                                                                                                                                           (26, 'Chiquitafort', 'Claudie.Shanahan@yahoo.com', '961 Roberts Plains', '+1 913-915-0908', 'Genderfluid'),
                                                                                                                                           (27, 'New Jacksonfurt', 'Estella.Hagenes@yahoo.com', '1489 Noma Fort', '+1 701-816-9742', 'Bigender'),
                                                                                                                                           (28, 'Rutherfordport', 'Brigette.Lemke@gmail.com', '00090 Dionna Plains', '+1 405-464-3200', 'Genderfluid'),
                                                                                                                                           (29, 'West Deweyhaven', 'Margaret.Rodriguez@yahoo.com', '470 Connelly Lodge', '+1 435-231-4483 x9671', 'NonBinary'),
                                                                                                                                           (30, 'Hintzfort', 'Sanford.Blick@gmail.com', '6942 Jast Pass', '+1 516-425-7766 x7262', 'Bigender'),
                                                                                                                                           (31, 'Chiquitafort', 'Emanuel.Zulauf@gmail.com', '101 Keeling Junctions', '+1 979-903-6814', 'Polygender'),
                                                                                                                                           (32, 'New Jacksonfurt', 'Luann.Christiansen@hotmail.com', '79442 Schowalter Road', '+1 831-435-5003', 'Genderqueer'),
                                                                                                                                           (33, 'Rutherfordport', 'Fe.Kreiger@hotmail.com', '3311 Volkman Skyway', '+1 239-872-0593', 'Agender'),
                                                                                                                                           (34, 'West Deweyhaven', 'Haywood.Upton@hotmail.com', '1335 Schimmel Way', '+1 530-812-2919 x9629', 'NonBinary'),
                                                                                                                                           (35, 'Hintzfort', 'Jessia.Smith@gmail.com', '556 Francesco Oval', '+1 708-239-2546 x9760', 'Genderfluid');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente_ruolo`
--

CREATE TABLE `dipendente_ruolo` (
                                    `id_dipendente` bigint NOT NULL,
                                    `settore` varchar(255) DEFAULT NULL,
                                    `ruolo` bigint DEFAULT NULL,
                                    `id_sede_lavorativa` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `dipendente_ruolo`
--

INSERT INTO `dipendente_ruolo` (`id_dipendente`, `settore`, `ruolo`, `id_sede_lavorativa`) VALUES
                                                                                               (1, 'settore a caso', 1, 5),
                                                                                               (2, 'settore a caso', 1, 4),
                                                                                               (3, 'settore a caso', 1, 3),
                                                                                               (4, 'settore a caso', 6, 2),
                                                                                               (5, 'settore a caso', 6, 1),
                                                                                               (6, 'settore a caso', 1, 5),
                                                                                               (7, 'settore a caso', 1, 4),
                                                                                               (8, 'settore a caso', 1, 3),
                                                                                               (9, 'settore a caso', 1, 2),
                                                                                               (10, 'settore a caso', 1, 1),
                                                                                               (11, 'settore a caso', 1, 5),
                                                                                               (12, 'settore a caso', 1, 4),
                                                                                               (13, 'settore a caso', 1, 3),
                                                                                               (14, 'settore a caso', 1, 2),
                                                                                               (15, 'settore a caso', 1, 1),
                                                                                               (16, 'settore a caso', 1, 5),
                                                                                               (17, 'settore a caso', 1, 4),
                                                                                               (18, 'settore a caso', 6, 3),
                                                                                               (19, 'settore a caso', 1, 2),
                                                                                               (20, 'settore a caso', 1, 1),
                                                                                               (21, 'settore a caso', 6, 5),
                                                                                               (22, 'settore a caso', 6, 4),
                                                                                               (23, 'settore a caso', 1, 3),
                                                                                               (24, 'settore a caso', 1, 2),
                                                                                               (25, 'settore a caso', 1, 1),
                                                                                               (26, 'settore a caso', 1, 5),
                                                                                               (27, 'settore a caso', 1, 4),
                                                                                               (28, 'settore a caso', 1, 3),
                                                                                               (29, 'settore a caso', 1, 2),
                                                                                               (30, 'settore a caso', 1, 1),
                                                                                               (31, 'settore a caso', 1, 5),
                                                                                               (32, 'settore a caso', 1, 4),
                                                                                               (33, 'settore a caso', 1, 3),
                                                                                               (34, 'settore a caso', 1, 2),
                                                                                               (35, 'settore a caso', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente_seq`
--

CREATE TABLE `dipendente_seq` (
                                  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `dipendente_seq`
--

INSERT INTO `dipendente_seq` (`next_val`) VALUES
    (101);

-- --------------------------------------------------------

--
-- Struttura della tabella `isola`
--

CREATE TABLE `isola` (
                         `id_isola` bigint NOT NULL,
                         `id_sede_lavorativa` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `isola`
--

INSERT INTO `isola` (`id_isola`, `id_sede_lavorativa`) VALUES
                                                           (1, 1),
                                                           (2, 2),
                                                           (3, 3),
                                                           (4, 4),
                                                           (5, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `isola_seq`
--

CREATE TABLE `isola_seq` (
                             `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `isola_seq`
--

INSERT INTO `isola_seq` (`next_val`) VALUES
    (101);

-- --------------------------------------------------------

--
-- Struttura della tabella `posto`
--

CREATE TABLE `posto` (
                         `codice_dt` varchar(255) NOT NULL,
                         `id_isola` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazione`
--

CREATE TABLE `prenotazione` (
                                `data_fine` date NOT NULL,
                                `data_inizio` date NOT NULL,
                                `id_dipendente` bigint NOT NULL,
                                `posto_codice_dt` varchar(255) NOT NULL,
                                `posto_id_isola` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `ruolo`
--

CREATE TABLE `ruolo` (
                         `id_ruolo` bigint NOT NULL,
                         `posizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `ruolo`
--

INSERT INTO `ruolo` (`id_ruolo`, `posizione`) VALUES
                                                  (1, 'JUNIOR'),
                                                  (2, 'SENIOR'),
                                                  (3, 'TEAM_LEAD'),
                                                  (4, 'PM'),
                                                  (5, 'ARCHITECT'),
                                                  (6, 'RESPONSABILE_HUB');

-- --------------------------------------------------------

--
-- Struttura della tabella `ruolo_seq`
--

CREATE TABLE `ruolo_seq` (
                             `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `ruolo_seq`
--

INSERT INTO `ruolo_seq` (`next_val`) VALUES
    (101);

-- --------------------------------------------------------

--
-- Struttura della tabella `sede_lavorativa`
--

CREATE TABLE `sede_lavorativa` (
                                   `id_sede` bigint NOT NULL,
                                   `citta_ubicazione` varchar(255) DEFAULT NULL,
                                   `indirizzo_ubicazione` varchar(255) DEFAULT NULL,
                                   `numero_posti_totali` int DEFAULT NULL,
                                   `id_responsabile_hub` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `sede_lavorativa`
--

INSERT INTO `sede_lavorativa` (`id_sede`, `citta_ubicazione`, `indirizzo_ubicazione`, `numero_posti_totali`, `id_responsabile_hub`) VALUES
                                                                                                                                        (1, 'Hintzfort', '97926 Gibson Brooks', 71, 5),
                                                                                                                                        (2, 'West Deweyhaven', '93003 Becker Gardens', 96, 4),
                                                                                                                                        (3, 'Rutherfordport', '157 Hoppe Road', 16, 18),
                                                                                                                                        (4, 'New Jacksonfurt', '40815 Purdy Overpass', 40, 22),
                                                                                                                                        (5, 'Chiquitafort', '82928 Gutkowski Gardens', 31, 21);

-- --------------------------------------------------------

--
-- Struttura della tabella `sede_lavorativa_seq`
--

CREATE TABLE `sede_lavorativa_seq` (
                                       `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `sede_lavorativa_seq`
--

INSERT INTO `sede_lavorativa_seq` (`next_val`) VALUES
    (101);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `dipendente`
--
ALTER TABLE `dipendente`
    ADD PRIMARY KEY (`id_dipendente`);

--
-- Indici per le tabelle `dipendente_dettagli`
--
ALTER TABLE `dipendente_dettagli`
    ADD PRIMARY KEY (`id_dipendente`);

--
-- Indici per le tabelle `dipendente_ruolo`
--
ALTER TABLE `dipendente_ruolo`
    ADD PRIMARY KEY (`id_dipendente`),
  ADD KEY `FK70orwsj1nbq7obp4rloe3h1it` (`ruolo`),
  ADD KEY `FK5eo76hb8eahgp4aj6foho2bt4` (`id_sede_lavorativa`);

--
-- Indici per le tabelle `isola`
--
ALTER TABLE `isola`
    ADD PRIMARY KEY (`id_isola`),
  ADD UNIQUE KEY `UK_rrye5o9phcglkp2kdqvmltwow` (`id_sede_lavorativa`);

--
-- Indici per le tabelle `posto`
--
ALTER TABLE `posto`
    ADD PRIMARY KEY (`codice_dt`,`id_isola`),
  ADD UNIQUE KEY `UK_sw4iifl49hh8jjlta5gixxrmr` (`id_isola`);

--
-- Indici per le tabelle `prenotazione`
--
ALTER TABLE `prenotazione`
    ADD PRIMARY KEY (`data_fine`,`data_inizio`,`id_dipendente`,`posto_codice_dt`,`posto_id_isola`),
  ADD UNIQUE KEY `UK_tqhxddvve5urfps9ethi1yeht` (`posto_codice_dt`,`posto_id_isola`),
  ADD UNIQUE KEY `UK_i8lsj1w7y0g9oat3ja2e4sp7c` (`id_dipendente`);

--
-- Indici per le tabelle `ruolo`
--
ALTER TABLE `ruolo`
    ADD PRIMARY KEY (`id_ruolo`);

--
-- Indici per le tabelle `sede_lavorativa`
--
ALTER TABLE `sede_lavorativa`
    ADD PRIMARY KEY (`id_sede`),
  ADD UNIQUE KEY `UK_casokhqe4rtnw8lnhiptstwn2` (`id_responsabile_hub`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `dipendente_dettagli`
--
ALTER TABLE `dipendente_dettagli`
    ADD CONSTRAINT `FK1tqqtwgpvm11vuqmrnqjybn5r` FOREIGN KEY (`id_dipendente`) REFERENCES `dipendente` (`id_dipendente`);

--
-- Limiti per la tabella `dipendente_ruolo`
--
ALTER TABLE `dipendente_ruolo`
    ADD CONSTRAINT `FK5eo76hb8eahgp4aj6foho2bt4` FOREIGN KEY (`id_sede_lavorativa`) REFERENCES `sede_lavorativa` (`id_sede`),
  ADD CONSTRAINT `FK70orwsj1nbq7obp4rloe3h1it` FOREIGN KEY (`ruolo`) REFERENCES `ruolo` (`id_ruolo`),
  ADD CONSTRAINT `FK83qmyi0rqolxijfcndba3nyvp` FOREIGN KEY (`id_dipendente`) REFERENCES `dipendente` (`id_dipendente`);

--
-- Limiti per la tabella `isola`
--
ALTER TABLE `isola`
    ADD CONSTRAINT `FKgufb41k7tffmwbv7gfs2h2goj` FOREIGN KEY (`id_sede_lavorativa`) REFERENCES `sede_lavorativa` (`id_sede`);

--
-- Limiti per la tabella `posto`
--
ALTER TABLE `posto`
    ADD CONSTRAINT `FKkd7xlbbe1e63nna33g72s586v` FOREIGN KEY (`id_isola`) REFERENCES `isola` (`id_isola`);

--
-- Limiti per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
    ADD CONSTRAINT `FK7w7xgd7w6851w6fupnd9hl9qd` FOREIGN KEY (`posto_codice_dt`,`posto_id_isola`) REFERENCES `posto` (`codice_dt`, `id_isola`),
  ADD CONSTRAINT `FKpqj14m2ki8mtdiik8twtbq980` FOREIGN KEY (`id_dipendente`) REFERENCES `dipendente` (`id_dipendente`);

--
-- Limiti per la tabella `sede_lavorativa`
--
ALTER TABLE `sede_lavorativa`
    ADD CONSTRAINT `FK8dsatjq9o9os6ul4foxlrn3n4` FOREIGN KEY (`id_responsabile_hub`) REFERENCES `dipendente` (`id_dipendente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
