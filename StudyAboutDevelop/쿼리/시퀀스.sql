-- ������ ����
CREATE SEQUENCE META_SEQ
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999
  MINVALUE 1
  NOCYCLE;

-- ������ ����
DROP SEQUENCE META_SEQ;

-- ������ ����
ALTER SEQUENCE META_SEQ
  MAXVALUE 1000;


-- ������ �˻�(���� ������ ��� �������� ������)
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG 
FROM USER_SEQUENCES;
