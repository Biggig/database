--设置“可重复读”隔离级别(REPEATABLE READ)，在students表上演示避免读“脏”数据、不可重复读，但不能避免幻象读
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ

BEGIN TRAN
	UPDATE STUDENTS SET grade = '5555' WHERE sid='800001216'
	WAITFOR DELAY '00:00:20'
	SELECT * FROM STUDENTS WHERE sid='800001216'
ROLLBACK TRAN
	SELECT * FROM STUDENTS WHERE sid='800001216'