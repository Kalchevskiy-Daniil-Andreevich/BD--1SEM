SET TRAN ISOLATION LEVEL SERIALIZABLE;
BEGIN TRAN
DELETE AUDITORIUM WHERE AUDITORIUM_TYPE = '��-�';
INSERT AUDITORIUM VALUES ('325-1', '��', 20, '325-1');
UPDATE AUDITORIUM SET AUDITORIUM_TYPE = '��-�' WHERE AUDITORIUM = '325-1';
SELECT AUDITORIUM_TYPE FROM AUDITORIUM WHERE AUDITORIUM = '325-1'
--T1--
SELECT AUDITORIUM_TYPE FROM AUDITORIUM WHERE AUDITORIUM = '325-1'
--T2--
COMMIT;