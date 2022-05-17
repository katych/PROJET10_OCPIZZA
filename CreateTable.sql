
CREATE SEQUENCE public.utilisateur_id_utilisateur_seq_4;

CREATE TABLE public.utilisateur (
                id_utilisateur VARCHAR NOT NULL DEFAULT nextval('public.utilisateur_id_utilisateur_seq_4'),
                adresse VARCHAR NOT NULL,
                telephone VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                nom VARCHAR NOT NULL,
                CONSTRAINT id_utilisateur PRIMARY KEY (id_utilisateur)
);


ALTER SEQUENCE public.utilisateur_id_utilisateur_seq_4 OWNED BY public.utilisateur.id_utilisateur;

CREATE TABLE public.authentification (
                id_utilisateur VARCHAR NOT NULL,
                identifiant VARCHAR NOT NULL,
                mot_de_passe VARCHAR NOT NULL,
                CONSTRAINT identifiant PRIMARY KEY (id_utilisateur)
);


CREATE SEQUENCE public.employe_id_employe_seq_1_1_2;

CREATE TABLE public.employe (
                id_employe INTEGER NOT NULL DEFAULT nextval('public.employe_id_employe_seq_1_1_2'),
                id_utilisateur VARCHAR NOT NULL,
                CONSTRAINT id_employe PRIMARY KEY (id_employe)
);


ALTER SEQUENCE public.employe_id_employe_seq_1_1_2 OWNED BY public.employe.id_employe;

CREATE SEQUENCE public.livreur_id_livreur_seq_1_1;

CREATE TABLE public.livreur (
                id_livreur INTEGER NOT NULL DEFAULT nextval('public.livreur_id_livreur_seq_1_1'),
                ref_livraison INTEGER NOT NULL,
                id_employe INTEGER NOT NULL,
                CONSTRAINT id_livreur PRIMARY KEY (id_livreur)
);


ALTER SEQUENCE public.livreur_id_livreur_seq_1_1 OWNED BY public.livreur.id_livreur;

CREATE SEQUENCE public.pizaiolo_id_pizaiolo_seq_1_1;

CREATE TABLE public.pizaiolo (
                id_pizaiolo INTEGER NOT NULL DEFAULT nextval('public.pizaiolo_id_pizaiolo_seq_1_1'),
                post VARCHAR NOT NULL,
                id_employe INTEGER NOT NULL,
                CONSTRAINT id_pizaiolo PRIMARY KEY (id_pizaiolo)
);


ALTER SEQUENCE public.pizaiolo_id_pizaiolo_seq_1_1 OWNED BY public.pizaiolo.id_pizaiolo;

CREATE SEQUENCE public.recette_id_recette_seq_1_1;

CREATE TABLE public.recette (
                id_recette INTEGER NOT NULL DEFAULT nextval('public.recette_id_recette_seq_1_1'),
                recette VARCHAR NOT NULL,
                CONSTRAINT id_recette PRIMARY KEY (id_recette)
);


ALTER SEQUENCE public.recette_id_recette_seq_1_1 OWNED BY public.recette.id_recette;

CREATE SEQUENCE public.ingredient_id_ingridient_seq_1;

CREATE TABLE public.ingredient (
                id_ingridient INTEGER NOT NULL DEFAULT nextval('public.ingredient_id_ingridient_seq_1'),
                nom VARCHAR NOT NULL,
                CONSTRAINT id_ingridient_ PRIMARY KEY (id_ingridient)
);


ALTER SEQUENCE public.ingredient_id_ingridient_seq_1 OWNED BY public.ingredient.id_ingridient;

CREATE SEQUENCE public.administration_id_administrateur_seq;

CREATE TABLE public.administration (
                id_administrateur INTEGER NOT NULL DEFAULT nextval('public.administration_id_administrateur_seq'),
                id_utilisateur VARCHAR NOT NULL,
                CONSTRAINT id_administrateur PRIMARY KEY (id_administrateur)
);


ALTER SEQUENCE public.administration_id_administrateur_seq OWNED BY public.administration.id_administrateur;

CREATE SEQUENCE public.restaurant_id_restaurant_seq;

CREATE TABLE public.restaurant (
                id_restaurant INTEGER NOT NULL DEFAULT nextval('public.restaurant_id_restaurant_seq'),
                nom_restaurant VARCHAR NOT NULL,
                telephone VARCHAR NOT NULL,
                adresse VARCHAR NOT NULL,
                id_administrateur INTEGER NOT NULL,
                CONSTRAINT id_restaurant__ PRIMARY KEY (id_restaurant)
);


ALTER SEQUENCE public.restaurant_id_restaurant_seq OWNED BY public.restaurant.id_restaurant;

CREATE SEQUENCE public.stock_id_stock_seq;

CREATE TABLE public.stock (
                id_stock VARCHAR NOT NULL DEFAULT nextval('public.stock_id_stock_seq'),
                quantite INTEGER NOT NULL,
                id_restaurant INTEGER NOT NULL,
                id_ingridient INTEGER NOT NULL,
                CONSTRAINT id_stock PRIMARY KEY (id_stock)
);


ALTER SEQUENCE public.stock_id_stock_seq OWNED BY public.stock.id_stock;

CREATE SEQUENCE public.client_id_client_seq_1_1;

CREATE TABLE public.client (
                id_client INTEGER NOT NULL DEFAULT nextval('public.client_id_client_seq_1_1'),
                id_utilisateur VARCHAR NOT NULL,
                CONSTRAINT _id_client_ PRIMARY KEY (id_client)
);


ALTER SEQUENCE public.client_id_client_seq_1_1 OWNED BY public.client.id_client;

CREATE SEQUENCE public.paiement_id_paiement_seq;

CREATE TABLE public.paiement (
                id_paiement VARCHAR NOT NULL DEFAULT nextval('public.paiement_id_paiement_seq'),
                montant DOUBLE PRECISION NOT NULL,
                moyen_paiement VARCHAR NOT NULL,
                id_client INTEGER NOT NULL,
                CONSTRAINT paiement_pk PRIMARY KEY (id_paiement)
);


ALTER SEQUENCE public.paiement_id_paiement_seq OWNED BY public.paiement.id_paiement;

CREATE SEQUENCE public.commande_numcommande_seq;

CREATE TABLE public.commande (
                num_commande INTEGER NOT NULL DEFAULT nextval('public.commande_numcommande_seq'),
                date DATE NOT NULL,
                time TIME NOT NULL,
                statut VARCHAR NOT NULL,
                id_client INTEGER NOT NULL,
                id_livreur INTEGER NOT NULL,
                CONSTRAINT num_commande_ PRIMARY KEY (num_commande)
);


ALTER SEQUENCE public.commande_numcommande_seq OWNED BY public.commande.num_commande;

CREATE TABLE public.menu (
                nom_pizza VARCHAR NOT NULL,
                prix DOUBLE PRECISION NOT NULL,
                size_pizza VARCHAR NOT NULL,
                num_commande INTEGER NOT NULL,
                id_recette INTEGER NOT NULL,
                id_pizaiolo INTEGER NOT NULL,
                CONSTRAINT nom_pizza_ PRIMARY KEY (nom_pizza)
);


CREATE SEQUENCE public.facture_num_facture_seq;

CREATE TABLE public.facture (
                num_facture INTEGER NOT NULL DEFAULT nextval('public.facture_num_facture_seq'),
                montant DOUBLE PRECISION NOT NULL,
                moyen_paiement VARCHAR NOT NULL,
                date_facture DATE NOT NULL,
                num_commande INTEGER NOT NULL,
                CONSTRAINT num_facture_ PRIMARY KEY (num_facture)
);


ALTER SEQUENCE public.facture_num_facture_seq OWNED BY public.facture.num_facture;

ALTER TABLE public.employe ADD CONSTRAINT utilisateur_employe_fk
FOREIGN KEY (id_utilisateur)
REFERENCES public.utilisateur (id_utilisateur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.administration ADD CONSTRAINT utilisateur_administration_fk
FOREIGN KEY (id_utilisateur)
REFERENCES public.utilisateur (id_utilisateur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.authentification ADD CONSTRAINT utilisateur_authentification_fk
FOREIGN KEY (id_utilisateur)
REFERENCES public.utilisateur (id_utilisateur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.client ADD CONSTRAINT utilisateur_client_fk
FOREIGN KEY (id_utilisateur)
REFERENCES public.utilisateur (id_utilisateur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.livreur ADD CONSTRAINT employe_livreur_fk
FOREIGN KEY (id_employe)
REFERENCES public.employe (id_employe)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.pizaiolo ADD CONSTRAINT employe_pizaiolo_fk
FOREIGN KEY (id_employe)
REFERENCES public.employe (id_employe)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande ADD CONSTRAINT livreur_commande_fk
FOREIGN KEY (id_livreur)
REFERENCES public.livreur (id_livreur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.menu ADD CONSTRAINT pizaiolo_menu_fk
FOREIGN KEY (id_pizaiolo)
REFERENCES public.pizaiolo (id_pizaiolo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.menu ADD CONSTRAINT recette_menu_fk
FOREIGN KEY (id_recette)
REFERENCES public.recette (id_recette)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (id_ingridient)
REFERENCES public.ingredient (id_ingridient)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.restaurant ADD CONSTRAINT administration_restaurant_fk
FOREIGN KEY (id_administrateur)
REFERENCES public.administration (id_administrateur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.stock ADD CONSTRAINT restaurant_stock_fk
FOREIGN KEY (id_restaurant)
REFERENCES public.restaurant (id_restaurant)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.paiement ADD CONSTRAINT client_paiement_fk
FOREIGN KEY (id_client)
REFERENCES public.client (id_client)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (id_client)
REFERENCES public.client (id_client)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.facture ADD CONSTRAINT commande_facture_fk
FOREIGN KEY (num_commande)
REFERENCES public.commande (num_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.menu ADD CONSTRAINT commande_menu_fk
FOREIGN KEY (num_commande)
REFERENCES public.commande (num_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;