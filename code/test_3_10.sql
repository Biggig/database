SELECT CHOICES.cid,CHOICES.score
FROM CHOICES,STUDENTS
WHERE CHOICES.sid = STUDENTS.sid AND STUDENTS.sname = 'SSHT'