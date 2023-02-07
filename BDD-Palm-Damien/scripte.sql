DROP TABLE IF EXISTS etudiants ;
CREATE TABLE etudiants (idEtudiant_etudiants INT(11) AUTO_INCREMENT NOT NULL,
nomEtudiant_etudiants VARCHAR(20),
prenomEtudiant_etudiants VARCHAR(20),
adresseEtudiant_etudiants VARCHAR(40),
villeEtudiant_etudiants VARCHAR(10),
codePostalEtudiant_etudiants INT(11),
telephoneEtudiant_etudiants VARCHAR(14),
dateEntreeEtudiant_etudiants DATE,
anneeEtudiant_etudiants INT(11),
remarqueEtudiant_etudiants VARCHAR(40),
sexeEtudiant_etudiants CHAR(1),
dateNaissanceEtudiant_etudiants DATE,
PRIMARY KEY (idEtudiant_etudiants)) ENGINE=InnoDB;

DROP TABLE IF EXISTS epreuves ;
CREATE TABLE epreuves (idEpreuve_epreuves INT(11) AUTO_INCREMENT NOT NULL,
libelleEpreuve_epreuves VARCHAR(20),
idEnseignant_enseignants INT(11),
idMatiere_matieres INT(11),
dateEpreuve_epreuves DATE,
CoefficientEpreuve_epreuves INT(11),
anneeEpreuve_epreuves INT(11),
PRIMARY KEY (idEpreuve_epreuves)) ENGINE=InnoDB;

DROP TABLE IF EXISTS enseignants ;
CREATE TABLE enseignants (idEnseignant_enseignants INT(11) AUTO_INCREMENT NOT NULL,
nomEnseignant_enseignants VARCHAR(20),
prenomEnseignant_enseignants VARCHAR(20),
fonctionEnseignant_enseignants VARCHAR(25),
adresseEnseignant_enseignants VARCHAR(40),
villeEnseignant_enseignants VARCHAR(10),
codePostalEnseignant_enseignants INT(11),
telephoneEnseignant_enseignants VARCHAR(14),
dateAnneeEns_enseignants DATE,
dateEmbaucheEnseignement_enseignants DATE,
PRIMARY KEY (idEnseignant_enseignants)) ENGINE=InnoDB;

DROP TABLE IF EXISTS matieres ;
CREATE TABLE matieres (idMatiere_matieres INT(11) AUTO_INCREMENT NOT NULL,
nomMatiere_matieres VARCHAR(15),
idModule_modules INT(11),
coefficientMatiere_matieres INT(11),
PRIMARY KEY (idMatiere_matieres)) ENGINE=InnoDB;

DROP TABLE IF EXISTS modules ;
CREATE TABLE modules (idModule_modules INT(11) AUTO_INCREMENT NOT NULL,
nomModule_modules VARCHAR(15),
coefficientModule_modules INT(11),
PRIMARY KEY (idModule_modules)) ENGINE=InnoDB;

DROP TABLE IF EXISTS avoir_note ;
CREATE TABLE avoir_note (idAvoirNote_avoir_note INT(11) AUTO_INCREMENT NOT NULL,
idEtudiant_etudiants INT(11) NOT NULL,
idEpreuve_epreuves INT(11) NOT NULL,
note_avoir_note INT(11),
PRIMARY KEY (idAvoirNote_avoir_note)) ENGINE=InnoDB;

DROP TABLE IF EXISTS faire_cours ;
CREATE TABLE faire_cours (idFaireCours_faire_cours INT(11) AUTO_INCREMENT NOT NULL,
idEnseignant_enseignants INT(11) NOT NULL,
idMatiere_matieres INT(11) NOT NULL,
annee_faire_cours INT(11),
PRIMARY KEY (idFaireCours_faire_cours)) ENGINE=InnoDB;

ALTER TABLE epreuves ADD CONSTRAINT FK_epreuves_idEnseignant_enseignants FOREIGN KEY (idEnseignant_enseignants) REFERENCES enseignants (idEnseignant_enseignants);

ALTER TABLE epreuves ADD CONSTRAINT FK_epreuves_idMatiere_matieres FOREIGN KEY (idMatiere_matieres) REFERENCES matieres (idMatiere_matieres);
ALTER TABLE matieres ADD CONSTRAINT FK_matieres_idModule_modules FOREIGN KEY (idModule_modules) REFERENCES modules (idModule_modules);
ALTER TABLE avoir_note ADD CONSTRAINT FK_avoir_note_idEtudiant_etudiants FOREIGN KEY (idEtudiant_etudiants) REFERENCES etudiants (idEtudiant_etudiants);
ALTER TABLE avoir_note ADD CONSTRAINT FK_avoir_note_idEpreuve_epreuves FOREIGN KEY (idEpreuve_epreuves) REFERENCES epreuves (idEpreuve_epreuves);
ALTER TABLE faire_cours ADD CONSTRAINT FK_faire_cours_idEnseignant_enseignants FOREIGN KEY (idEnseignant_enseignants) REFERENCES enseignants (idEnseignant_enseignants);
ALTER TABLE faire_cours ADD CONSTRAINT FK_faire_cours_idMatiere_matieres FOREIGN KEY (idMatiere_matieres) REFERENCES matieres (idMatiere_matieres);
