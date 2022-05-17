--
-- Data utilisateur
--
select * from public.utilisateur
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('sara adresse','0987654321','sara@laliet.com','Sara','laliet');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('oliver adresse','0987654321','oliver@stein.com','Oliver','Stein');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('john adresse','0987654321','john@smith.com','John','Smith');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('adam adresse','0987654321','adam@stein.com','Adam','Stein');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('ella adresse','0987654321','ella@smith.com','Ella','Smith');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('jack adresse','0987654321','jack@cary.com','Jack','Cary');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('sofia adresse','0987654321','sofia@dupont.com','Sofia','Dupont');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('karima adresse','0987654321','karima@girout.com','Karima','Girout');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('lopez adresse','0987654321','lopez@martin.com','Martin','Lopez');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('Guillot adresse','0987654321','thomas@guillot.com','Thomas','Guillot');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('Hubert adresse','0987654321','bernard@hubert.com','Bernard','Hubert');
insert into public.utilisateur(adresse,telephone,email,prenom,nom) values ('Dupuis adresse','0987654321','Laurent@Dupuis.com','Laurent','Dupuis');

,,

--
-- Data client
--
select * from public.client
insert into public.client(id_utilisateur) values (1);
insert into public.client(id_utilisateur) values (2);
insert into public.client(id_utilisateur) values (4);
insert into public.client(id_utilisateur) values (5);
insert into public.client(id_utilisateur) values (6);
--
-- Data pizaiolo
--
select * from public.pizaiolo
insert into public.pizaiolo(post,id_employe) values ('poste 1',1);
insert into public.pizaiolo(post,id_employe) values ('poste 2',2);
insert into public.pizaiolo(post,id_employe) values ('poste 3',3);
--
-- Data administrateur
--
select * from public.administration
insert into public.administration(id_utilisateur) values (7);
insert into public.administration(id_utilisateur) values (8);
insert into public.administration(id_utilisateur) values (9);
--
-- Data restaurant
--
select * from public.restaurant
insert into public.restaurant(nom_restaurant,telephone,adresse,id_administrateur) values ('Caribou1','0987654321','adresse retaurant',1);
insert into public.restaurant(nom_restaurant,telephone,adresse,id_administrateur) values ('Caribou2','1234567890','adresse retaurant',2);
insert into public.restaurant(nom_restaurant,telephone,adresse,id_administrateur) values ('Caribou3','543217890','adresse retaurant',1);
insert into public.restaurant(nom_restaurant,telephone,adresse,id_administrateur) values ('Caribou4','0987654321','adresse retaurant',3);
insert into public.restaurant(nom_restaurant,telephone,adresse,id_administrateur) values ('Caribou5','0987654321','adresse retaurant',3);
--
-- Data employe
--
select * from public.employe
insert into public.employe(id_utilisateur) values (12);
insert into public.employe(id_utilisateur) values (13);
insert into public.employe(id_utilisateur) values (14);
insert into public.employe(id_utilisateur) values (15);

--
-- Data livreur
--
--
select * from public.livreur
insert into public.livreur(ref_livraison,id_employe) values (0088665544,3);
insert into public.livreur(ref_livraison,id_employe) values (0088665544,4);

--
-- Data commande
--
select * from public.commande
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande validée',2,6);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande anunlée',2,1);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande prête à être retirée en point de vente',2,2);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande en préparation ',1,3);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande en attente',2,4);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande en attente de livraison',2,5);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande finalisée',1,3);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande en cours de livraison',1,2);
insert into public.commande(date,time,statut,id_livreur,id_client) values ('10-12-2020','10:00','commande livrée et payée',2,5);
 

--
-- Data authentification
--
select * from public.authentification
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (1,'john@smith.com','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (2,'sara@laliet.com','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (3,'oliver@stein.com','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (4,'ella@smith.com','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (5,'adam@stein.com','kjjhggtfr');

insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (6,'Lopez@Martin.fr','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (7,'Guillot@Thomas.fr','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (8,'Hubert@Bernard.fr','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (9,'Dupuis@Laurent.fr','kjjhggtfr');
insert into public.authentification(id_utilisateur,identifiant,mot_de_passe) values (10,'Vasseur@Charles.fr','kjjhggtfr');

--
-- Data ingredient
--
select * from public.ingredient
insert into public.ingredient(nom) values ('tomate' );
insert into public.ingredient(nom) values ('Oignon ');
insert into public.ingredient(nom) values ('olive' );
insert into public.ingredient(nom) values ('poivron');
insert into public.ingredient(nom) values ('fromage');



--
-- Data recette
--
select * from public.recette
insert into public.recette(recette) values ('(Ingrédients : 400 g / 14 oz pâte à pizza fraîche,45 ml / 3 c. à soupe huile olive,2  oignons moyens émincés, 2grosses tomates en tranches fines
 Au goût sel et poivre du moulin, 45 ml / 3 c. à soupe basilic frais, ciselé, 1 contenant de 200 g fromage bocconcini, en tranches fines,500 ml / 2 tasses roquette, rincée, essorée, déchirée à la main )');
INSERT INTO public.recette ( recette) VALUES ( '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)Prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 8 mn au four.');
insert into public.recette(recette) values ('(400 g / 14 oz pâte à pizza fraîche,45 ml / 3 c. à soupe huile olive,2  oignons moyens émincés, 2grosses tomates en tranches fines
 Au goût sel et poivre du moulin, 45 ml / 3 c. à soupe basilic frais, ciselé, 1 contenant de 200 g fromage bocconcini, en tranches fines,500 ml / 2 tasses roquette, rincée, essorée, déchirée à la main )');
INSERT INTO public.recette ( recette) VALUES ( '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)Prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 8 mn au four.');

--
-- Data menu
--
select * from public.menu
insert into public.menu(nom_pizza,prix,num_commande,id_recette,id_pizaiolo,size_pizza) values ('Margarita' ,7,1,1,3,'small');
insert into public.menu(nom_pizza,prix,num_commande,id_recette,id_pizaiolo,size_pizza) values ('frommage' ,10,5,2,2,'moyenne');
insert into public.menu(nom_pizza,prix,num_commande,id_recette,id_pizaiolo,size_pizza) values ('Vegetarian ' ,10,8,3,3,'grande');
insert into public.menu(nom_pizza,prix,num_commande,id_recette,id_pizaiolo,size_pizza) values ('pizza minute' ,7,10,4,3,'small');

--
-- Data stock
--
select * from public.stock
insert into public.stock(quantite,id_restaurant,id_ingridient) values (30 ,2,1);
insert into public.stock(quantite,id_restaurant,id_ingridient) values (50 ,3,2);
insert into public.stock(quantite,id_restaurant,id_ingridient) values (100 ,4,3);
insert into public.stock(quantite,id_restaurant,id_ingridient) values (9 ,3,1);
insert into public.stock(quantite,id_restaurant,id_ingridient) values (200 ,5,5);
insert into public.stock(quantite,id_restaurant,id_ingridient) values (70 ,4,3);
insert into public.stock(quantite,id_restaurant,id_ingridient) values (59 ,2,1);

--
-- Data facture
--
select * from public.facture
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (30 ,'carte de credit','10-12-2020',1);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (100 ,'cash','10-12-2020',3);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (300 ,'carte de credit','10-12-2020',5);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (50 ,'carte de credit','10-12-2020',7);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (10 ,'cash','10-12-2020',10);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (99 ,'cash','10-12-2020',8);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (567 ,'carte de credit','10-12-2020',9);
insert into public.facture(montant,moyen_paiement,date_facture,num_commande) values (234 ,'cash','10-12-2020',11);

--
-- Data paiement
--
select * from public.paiement
insert into public.paiement(montant,moyen_paiement,id_client) values (30 ,'carte de credit',6);
insert into public.paiement(montant,moyen_paiement,id_client) values (100 ,'cash',3);
insert into public.paiement(montant,moyen_paiement,id_client) values (300 ,'carte de credit',4);
insert into public.paiement(montant,moyen_paiement,id_client) values (60 ,'cassh',5);
insert into public.paiement(montant,moyen_paiement,id_client) values (90 ,'carte de credit',6);















