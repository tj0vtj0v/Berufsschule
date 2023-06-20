# Nummer 1
SELECT AVG(xy.AnzahlProJahr)
FROM (
	SELECT b.erscheinungsjahr, count(*) AS AnzahlProJahr
	FROM buch b
	GROUP BY b.erscheinungsjahr
	HAVING AnzahlProJahr > 1
    ) AS xy;

#Nummer 2
SELECT SUM(preis)
FROM (
	SELECT s.bezeichnung AS bez, avg(b.einkaufspreis) AS preis
    FROM buch b JOIN buch_sparte bhs
    ON b.buch_id = bhs.buch_id_fk
    JOIN sparte s
    ON s.sparte_id = bhs.sparte_id_fk
    GROUP BY s.bezeichnung
    HAVING AVG(b.einkaufspreis) > 10
    AND bez <> 'Humor'
    ) AS xy;

#Nummer 3
SELECT count(*)
FROM (
	SELECT count(buch_id_fk)
	FROM autor_buch
	GROUP BY autor_id_fk
	HAVING count(buch_id_fk) > 4
    ) AS xy;

#Nummer 4
SELECT o.name, count(v.ort_id_fk)
FROM verlag v JOIN ort o
ON v.ort_id_fk = o.ort_id
GROUP BY v.ort_id_fk
ORDER BY count(v.ort_id_fk) DESC
LIMIT 4;

#Nummer 5
SELECT  o.name,
	(SELECT count(*)
    FROM buch b JOIN verlag v 
    ON b.verlag_id_fk = v.verlag_id
    WHERE erscheinungsjahr < 1980
    AND v.ort_id_fk = o.ort_id) AS 'vor 1980',
	(SELECT count(*)
    FROM buch b JOIN verlag v 
    ON b.verlag_id_fk = v.verlag_id
    WHERE erscheinungsjahr > 1980
    AND v.ort_id_fk = o.ort_id) AS 'nach 1980'
FROM ort o
GROUP BY o.name
