# 입양을 못갔다 -> ANIMAL_OUTS에 없다.
# 오래 있었다 -> 오름차순으로 3마리
# 보호 시작일 순으로 -> ORDER BY
SELECT INS.NAME, INS.DATETIME
FROM ANIMAL_INS AS INS
LEFT JOIN ANIMAL_OUTS AS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE OUTS.ANIMAL_ID IS NULL
ORDER BY INS.DATETIME
LIMIT 3;
