-- �������κм���  (LCS = �ձ⽺Ʈ Ŀ�� ������)
-- �־��� �������� ������ ��� �κм����� �� ���� ����� ã�� �˰���
-- diff �� ��ƿ��Ƽ�� �ٰ�. ���������п��� ���� ����ȴ�.
-- 
-- �ð����⵵ = O(��������* ���Ұ���)


��Ģ
1. ������⸦ �������� �κ��Լ� ���ϱ�
2. ������Ⱑ ���� ��ǲ�� ���Դٸ� ��� �κ��Լ� ���ϱ�
3. jaro_winkler_similarity �տ��� ��ġ�Ҽ��� ���絵�� ����.


/* ��ȸ */

WITH INPUT AS(
	SELECT 'ȯ�� �Կ� �Ͻ�' AS USERINPUT FROM DUAL
	UNION ALL
	SELECT 'ȯ���Կ��Ͻ�' AS USERINPUT FROM DUAL
)
SELECT META.SEQNO 
	, META.LOGICAL_WORD 
	, META.PHYSICAL_WORD 
	, META.SUMMARY_WORD 
	, (INPUT.USERINPUT) AS �����Է�
	, UTL_MATCH.jaro_winkler_similarity(META.LOGICAL_WORD, INPUT.USERINPUT) AS ���絵
	, META.LOGICAL_WORD 
FROM META_TABLE META
   , INPUT;

  
  /* ���� */
  DELETE  FROM META_TABLE WHERE SEQNO IN (21);


INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '����� �� �ִ�', 'calculable', 'calculable');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '���', 'calcul', 'calcul');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '����', 'calculator', 'calculator');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '���ڰ���', 'electronic calculator', 'electronic calculator');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, 'ȯ��', 'patient', 'patient');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '�Կ�', 'Admission', 'Admission');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '�Ͻ�', 'Date', 'Date');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '��', 'Date', 'Date');

INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, '��', 'Work', 'Work');


INSERT INTO META_TABLE 
(SEQNO , LOGICAL_WORD, PHYSICAL_WORD, SUMMARY_WORD)
VALUES
(META_SEQ.NEXTVAL, 'ȯ���Կ��Ͻ�', 'PatientAdmissionDate', 'PADATE');
