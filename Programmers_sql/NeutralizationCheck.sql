SELECT ANIMAL_ID, NAME,
IF(SEX_UPON_INTAKE LIKE 'N%' OR SEX_UPON_INTAKE LIKE 'S%', 'O', 'X') AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;