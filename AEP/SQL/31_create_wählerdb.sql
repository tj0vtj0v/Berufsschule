#Nummer 1
SELECT p_bezeichnung, 
	(SELECT count(*)
    FROM waehler
    WHERE w_p_id = p_id
    ) AS 'Wähler Anzahl'
FROM partei
ORDER BY p_bezeichnung ASC;

#Nummer 2
SELECT p_bezeichnung AS Partei, 'Fachoberschulreife' AS 'Schulabschluss',
	(SELECT count(*)
    FROM waehler w JOIN schulabschluss s
    ON w.w_s_id = s.s_id
    WHERE w.w_p_id = p.p_id
    AND s.s_bezeichnung = 'Fachoberschulreife'
    ) AS 'Wähler Anzahl'
FROM partei p
ORDER BY p.p_bezeichnung ASC;

#Nummer 3
SELECT p.p_bezeichnung, b.b_bezeichnung,
	(SELECT count(*)
    FROM waehler wi
    WHERE wi.w_p_id = p.p_id
    AND wi.w_b_id = b.b_id
    ) AS 'Anzahl Wähler'
FROM partei p, bundesland b
WHERE b.b_bezeichnung LIKE 'N%'
ORDER BY p.p_bezeichnung DESC, b.b_bezeichnung ASC;

#Nummer 4
SELECT p.p_bezeichnung AS 'Partei',
	(SELECT ROUND(AVG(w.w_alter), 0)
    FROM waehler w
    WHERE w.w_p_id = p.p_id
    AND w_geschlecht = 'm') AS 'Männliches Durchschnittsalter',
	(SELECT AVG(w.w_alter)
    FROM waehler w
    WHERE w.w_p_id = p.p_id
    AND w_geschlecht = 'w') AS 'Weibliches Durchschnittsalter'
FROM partei p





