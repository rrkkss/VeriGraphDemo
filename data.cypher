CREATE (:Zakaznik {id: 1, jmeno: 'Ingeborga', prijmeni: 'Košíková', datum_narozeni: date('1985-01-01'), cislo_prukazu_totoznosti: '202168323', cislo_zbrojniho_prukazu: '13471', sleva: 0, je_vitan: 1})
CREATE (:Zakaznik {id: 2, jmeno: 'Tom�', prijmeni: 'Ruprecht', datum_narozeni: date('1966-08-22'), cislo_prukazu_totoznosti: '198354184', cislo_zbrojniho_prukazu: null, sleva: 15, je_vitan: 1})
CREATE (:Zakaznik {id: 3, jmeno: 'Martin', prijmeni: 'Vševěd', datum_narozeni: date('2003-05-06'), cislo_prukazu_totoznosti: '233445667', cislo_zbrojniho_prukazu: null, sleva: 0, je_vitan: 1})
CREATE (:Zakaznik {id: 4, jmeno: 'Petr', prijmeni: 'Kruntonerád', datum_narozeni: date('2001-09-11'), cislo_prukazu_totoznosti: '222865947', cislo_zbrojniho_prukazu: null, sleva: 25, je_vitan: 0})
CREATE (:Zakaznik {id: 5, jmeno: 'Hyacint', prijmeni: 'Prkno', datum_narozeni: date('1955-11-04'), cislo_prukazu_totoznosti: '165386936', cislo_zbrojniho_prukazu: '86943', sleva: 0, je_vitan: 1});
CREATE (:Zakaznik {id: 6, jmeno: 'Emanuel', prijmeni: 'Pedál', datum_narozeni: date('1955-11-05'), cislo_prukazu_totoznosti: '165386937', cislo_zbrojniho_prukazu: '86944', sleva: 0, je_vitan: 1});

CREATE (:Naboj {id: 1, vyrobce: 'Luger', gramaz: 8, raze: '9x19', typ: 'pistole', porizovaci_cena: 7, prodejni_cena: 15, EAN: 'sghfskbrhb3h1324', kusu_skladem: 100})
CREATE (:Naboj {id: 2, vyrobce: 'SPEER', gramaz: 9, raze: '.38 Special', typ: 'pistole', porizovaci_cena: 29, prodejni_cena: 60, EAN: 'fgjkhdfgjkdhgk3', kusu_skladem: 250})
CREATE (:Naboj {id: 3, vyrobce: 'Hornady', gramaz: 15, raze: '.45 ACP', typ: 'pistole', porizovaci_cena: 51, prodejni_cena: 100, EAN: 'jk4g839hg9n3gn3i', kusu_skladem: 25})
CREATE (:Naboj {id: 4, vyrobce: 'STV Group', gramaz: 123, raze: '7.62x39', typ: 'samopal', porizovaci_cena: 9, prodejni_cena: 20, EAN: 'jb5g784b5gb48', kusu_skladem: 400})
CREATE (:Naboj {id: 5, vyrobce: 'Lapua', gramaz: 145, raze: '7,62x54R', typ: 'samopal', porizovaci_cena: 55, prodejni_cena: 100, EAN: 'dfgjgdkfgdh32hj33', kusu_skladem: 300})
CREATE (:Naboj {id: 6, vyrobce: 'Hornady', gramaz: 325, raze: '.45-70Govt.', typ: 'puška', porizovaci_cena: 69, prodejni_cena: 130, EAN: 'fgfjdhgkddfkg9', kusu_skladem: 0})
CREATE (:Naboj {id: 7, vyrobce: 'Lapua', gramaz: 175, raze: '.308', typ: 'pu�ka', porizovaci_cena: 57, prodejni_cena: 100, EAN: 'n57ng954ng459n459', kusu_skladem: 400})
CREATE (:Naboj {id: 8, vyrobce: 'SPEER', gramaz: 9, raze: '.375', typ: 'pistole', porizovaci_cena: 20, prodejni_cena: 40, EAN: 'jgun5jn484ng8', kusu_skladem: 60});

CREATE (:OchPomucka {id: 1, nazev: 'Rukavice', porizovaci_cena: 49, pujcovne: 29, datum_porizeni: date('2023-12-07'), je_dostupna: 1})
CREATE (:OchPomucka {id: 2, nazev: 'Bryle', porizovaci_cena: 99, pujcovne: 49, datum_porizeni: date('2023-12-07'), je_dostupna: 1})
CREATE (:OchPomucka {id: 3, nazev: 'Rukavice - kozene', porizovaci_cena: 299, pujcovne: 99, datum_porizeni: date('2023-12-07'), je_dostupna: 0})
CREATE (:OchPomucka {id: 4, nazev: 'Sluchatka', porizovaci_cena: 399, pujcovne: 99, datum_porizeni: date('2023-12-07'), je_dostupna: 1})
CREATE (:OchPomucka {id: 5, nazev: 'Sluchatka - zateplene', porizovaci_cena: 499, pujcovne: 49, datum_porizeni: date('2023-12-07'), je_dostupna: 0});

CREATE (:Rezervace {id: 1, strelecky_stav: 1, datum: datetime('2023-08-12T12:00:00.000'), delka: 120})
CREATE (:Rezervace {id: 2, strelecky_stav: 1, datum: datetime('2023-08-12T14:00:00.000'), delka: 60})
CREATE (:Rezervace {id: 3, strelecky_stav: 3, datum: datetime('2023-08-12T09:00:00.000'), delka: 45})
CREATE (:Rezervace {id: 4, strelecky_stav: 2, datum: datetime('2023-08-12T15:00:00.000'), delka: 180})
CREATE (:Rezervace {id: 5, strelecky_stav: 4, datum: datetime('2023-08-12T14:00:00.000'), delka: 90})
CREATE (:Rezervace {id: 6, strelecky_stav: 5, datum: datetime('2023-08-12T12:00:00.000'), delka: 120});

CREATE (:Zbran {id: 1, vyrobce: 'CZ', kategorie: 'pistole', model: '75 B', povinnost_zp: 0, porizovaci_cena: 4999, datum_porizeni: date('2023-06-01'), zaruka_do: date('2025-06-01'), je_dostupna: 1})
CREATE (:Zbran {id: 2, vyrobce: 'AI', kategorie: 'pu�ka', model: 'AWP', povinnost_zp: 1, porizovaci_cena: 139999, datum_porizeni: date('2023-01-01'), zaruka_do: date('2025-01-01'), je_dostupna: 1})
CREATE (:Zbran {id: 3, vyrobce: 'Kalashnikov', kategorie: 'samopal', model: 'AK-47', povinnost_zp: 0, porizovaci_cena: 79999, datum_porizeni: date('2021-05-05'), zaruka_do: date('2023-05-05'), je_dostupna: 0})
CREATE (:Zbran {id: 4, vyrobce: 'ArmaLite', kategorie: 'samopal', model: 'AR-15', povinnost_zp: 0, porizovaci_cena: 79999, datum_porizeni: date('2022-12-15'), zaruka_do: date('2024-12-15'), je_dostupna: 1})
CREATE (:Zbran {id: 5, vyrobce: 'Tula Arms Plant', kategorie: 'samopal', model: 'AS-Val', povinnost_zp: 0, porizovaci_cena: 99999, datum_porizeni: date('2023-03-01'), zaruka_do: date('2025-03-01'), je_dostupna: 1})
CREATE (:Zbran {id: 6, vyrobce: 'Alfa steel', kategorie: 'pistole', model: '357 Magnum', povinnost_zp: 0, porizovaci_cena: 9999, datum_porizeni: date('2005-12-19'), zaruka_do: date('2007-12-19'), je_dostupna: 1});

MATCH (z:Zbran) , (r:Rezervace)
WHERE z.id = 1 AND  r.id = 1
CREATE (z)-[:REZERVOVANO]->(r);

MATCH (z:Zbran) , (r:Rezervace)
WHERE z.id = 6 AND  r.id = 2
CREATE (z)-[:REZERVOVANO]->(r);

MATCH (z:Zbran) , (r:Rezervace)
WHERE z.id = 1 AND  r.id = 2
CREATE (z)-[:REZERVOVANO]->(r);

MATCH (z:Zbran) , (r:Rezervace)
WHERE z.id = 5 AND  r.id = 5
CREATE (z)-[:REZERVOVANO]->(r);

MATCH (z:Zbran) , (r:Rezervace)
WHERE z.id = 6 AND  r.id = 4
CREATE (z)-[:REZERVOVANO]->(r);

---------

MATCH (o:OchPomucka) , (r:Rezervace)
WHERE o.id = 2 AND  r.id = 1
CREATE (o)-[:REZERVOVANO]->(r);

MATCH (o:OchPomucka) , (r:Rezervace)
WHERE o.id = 4 AND  r.id = 2
CREATE (o)-[:REZERVOVANO]->(r);

MATCH (o:OchPomucka) , (r:Rezervace)
WHERE o.id = 2 AND  r.id = 4
CREATE (o)-[:REZERVOVANO]->(r); 

---------

MATCH (z:Zbran) , (n:Naboj)
WHERE z.id = 1 AND  n.id = 1
CREATE (z)-[:KOMPATIBILNI]->(n);

MATCH (z:Zbran) , (n:Naboj)
WHERE z.id = 3 AND  n.id = 4
CREATE (z)-[:KOMPATIBILNI]->(n);

MATCH (z:Zbran) , (n:Naboj)
WHERE z.id = 5 AND  n.id = 4
CREATE (z)-[:KOMPATIBILNI]->(n);

MATCH (z:Zbran) , (n:Naboj)
WHERE z.id = 6 AND  n.id = 2
CREATE (z)-[:KOMPATIBILNI]->(n);

MATCH (z:Zbran) , (n:Naboj)
WHERE z.id = 6 AND  n.id = 7
CREATE (z)-[:KOMPATIBILNI]->(n);

----------

MATCH (r:Rezervace) , (z:Zakaznik)
WHERE r.id = 1 AND  z.id = 1
CREATE (r)-[:ZAREZERVOVAL]->(z);

MATCH (r:Rezervace) , (z:Zakaznik)
WHERE r.id = 2 AND  z.id = 2
CREATE (r)-[:ZAREZERVOVAL]->(z);

MATCH (r:Rezervace) , (z:Zakaznik)
WHERE r.id = 3 AND  z.id = 5
CREATE (r)-[:ZAREZERVOVAL]->(z);

MATCH (r:Rezervace) , (z:Zakaznik)
WHERE r.id = 4 AND  z.id = 3
CREATE (r)-[:ZAREZERVOVAL]->(z);

MATCH (r:Rezervace) , (z:Zakaznik)
WHERE r.id = 5 AND  z.id = 2
CREATE (r)-[:ZAREZERVOVAL]->(z);

MATCH (r:Rezervace) , (z:Zakaznik)
WHERE r.id = 6 AND  z.id = 6
CREATE (r)-[:ZAREZERVOVAL]->(z);