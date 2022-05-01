SELECT I.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME 
FROM ANIMAL_INS I JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID 
WHERE I.SEX_UPON_INTAKE LIKE '%intact%' AND 
(
    O.SEX_UPON_OUTCOME LIKE '%spayed%'
    OR O.SEX_UPON_OUTCOME LIKE '%neutered%' 
);
