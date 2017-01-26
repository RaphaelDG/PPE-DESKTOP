ALTER TABLE COMMERCIAL ADD CONSTRAINT FK_COMMERCIAL_numUtilisateur FOREIGN KEY (numUtilisateur) REFERENCES UTILISATEUR(numUtilisateur);
ALTER TABLE COMMERCIAL ADD CONSTRAINT FK_COMMERCIAL_idPortefeuille FOREIGN KEY (idPortefeuille) REFERENCES PORTEFEUILLE(idPortefeuille);
ALTER TABLE STRUCTURE ADD CONSTRAINT FK_STRUCTURE_codeTypeStructure FOREIGN KEY (codeTypeStructure) REFERENCES TYPE_STRUCTURE(codeTypeStructure);
ALTER TABLE INTERLOCUTEUR ADD CONSTRAINT FK_INTERLOCUTEUR_num_individu FOREIGN KEY (num_individu) REFERENCES PARTICULIER(num_individu);
ALTER TABLE INTERLOCUTEUR ADD CONSTRAINT FK_INTERLOCUTEUR_idPortefeuille FOREIGN KEY (idPortefeuille) REFERENCES PORTEFEUILLE(idPortefeuille);
ALTER TABLE PARTICULIER ADD CONSTRAINT FK_PARTICULIER_id_interlocuteur FOREIGN KEY (id_interlocuteur) REFERENCES INTERLOCUTEUR(id_interlocuteur);
ALTER TABLE RDV ADD CONSTRAINT FK_RDV_id_interlocuteur FOREIGN KEY (id_interlocuteur) REFERENCES INTERLOCUTEUR(id_interlocuteur);
ALTER TABLE RDV ADD CONSTRAINT FK_RDV_id_type_rdv FOREIGN KEY (id_type_rdv) REFERENCES TYPERDV(id_type_rdv);
ALTER TABLE RDV ADD CONSTRAINT FK_RDV_idPlanning FOREIGN KEY (idPlanning) REFERENCES PLANNING(idPlanning);
ALTER TABLE CONGES ADD CONSTRAINT FK_CONGES_id_salarie FOREIGN KEY (id_salarie) REFERENCES COMMERCIAL(id_salarie);
ALTER TABLE UTILISATEUR ADD CONSTRAINT FK_UTILISATEUR_codeTypeUtilisateur FOREIGN KEY (codeTypeUtilisateur) REFERENCES TYPE_UTILISATEUR(codeTypeUtilisateur);
ALTER TABLE MAIL ADD CONSTRAINT FK_MAIL_id_salarie FOREIGN KEY (id_salarie) REFERENCES COMMERCIAL(id_salarie);
ALTER TABLE MAIL ADD CONSTRAINT FK_MAIL_id_interlocuteur FOREIGN KEY (id_interlocuteur) REFERENCES INTERLOCUTEUR(id_interlocuteur);
ALTER TABLE PLANNING ADD CONSTRAINT FK_PLANNING_id_salarie FOREIGN KEY (id_salarie) REFERENCES COMMERCIAL(id_salarie);
ALTER TABLE PORTEFEUILLE ADD CONSTRAINT FK_PORTEFEUILLE_id_salarie FOREIGN KEY (id_salarie) REFERENCES COMMERCIAL(id_salarie);
ALTER TABLE APPARTENIR ADD CONSTRAINT FK_APPARTENIR_id_interlocuteur FOREIGN KEY (id_interlocuteur) REFERENCES INTERLOCUTEUR(id_interlocuteur);
ALTER TABLE APPARTENIR ADD CONSTRAINT FK_APPARTENIR_num_structure FOREIGN KEY (num_structure) REFERENCES STRUCTURE(num_structure);
ALTER TABLE SUIVRE ADD CONSTRAINT FK_SUIVRE_id_rdv FOREIGN KEY (id_rdv) REFERENCES RDV(id_rdv);
ALTER TABLE SUIVRE ADD CONSTRAINT FK_SUIVRE_id_rdv_RDV FOREIGN KEY (id_rdv_RDV) REFERENCES RDV(id_rdv);
