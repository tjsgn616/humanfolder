/* snake_case ������ũ ���̽�
 * PascalCase �Ľ�Į���̽�
 * camelCase ī�����̽�
 */
/* ������ �ǹ̰� �ִ´ܾ��_�� ����Ǿ��ٸ� ī�����̽��� �����ϴ� ���ĺ��� �빮�ڷ� �ٲ۴�.*/
/* �� ��ũ��Ʈ �ܿ����� ī�����̽��� ���� db�ܿ����� �빮�ڿ� ����ٸ� ���� -> �ڹٽ�ũ��Ʈ�� �����̸��� ��� �������� ����. �׷��� ���� ��� ������ ���̺귯���� �ٽ� API�� ī�����̽��� ����Ѵ�*/
/* INICAP : �� �ܾ��� ù���ڸ� �빮�ڷ�, �������� �ҹ��ڷ� ��ȯ�Ͽ� ��ȯ�Ѵ�.  ����� ���ĺ��� ������ ���ڰ� �����ڰ� �ȴ�.*/

WITH T AS(
	SELECT 'SKT_FAKER' AS val FROM DUAL
	UNION ALL
	SELECT 'SKT_BANGI_THE_JUNGLE' FROM DUAL
	UNION ALL
	SELECT 'ABCD_�����ٶ�_1234_xyz' FROM DUAL
	UNION ALL
	SELECT 'a_bc_1_22_333' FROM DUAL
	UNION ALL
	SELECT 'A_bC_3_45_678' FROM DUAL
	UNION ALL
	SELECT 'XY_3Z_1_004' FROM DUAL
	UNION ALL
	SELECT 'XY3___z_100_0__4' FROM DUAL
	UNION ALL
	SELECT '_AB_cd100_0__4' FROM DUAL
)
--SELECT val
--	, INITCAP(val)	/*ù���� �빮�ڷ� ����*/
--	, REPLACE(val, '_')	/* ����� ����*/
--	, REPLACE(INITCAP('i'||val),'_')	/*ù���ڴ� �ҹ��ڷ� �����ϱ����� �ƹ����ڸ� �տ� ������*/
--	, SUBSTR( REPLACE(INITCAP('i'||val),'_'),2)	/*���� ù���ڸ� �� 2��°���ں��� �ڸ���*/
--FROM T;


/* �׷��� ����ó���� ����ٷ� �����ϴ°� �Ÿ��� ���ϴ°� �߰��ؼ� ó�� */
SELECT val
	, CASE SUBSTR(val, 2,1)
      WHEN '_' THEN CONCAT(UPPER(SUBSTR(val, 1, 1)), SUBSTR(REPLACE(INITCAP(val), '_'),2))	/*ù���ڴ� �빮�ڷ� �ϳ��� �ڸ���, �ڴ� ī�����̽�����*/
      ELSE SUBSTR(REPLACE(INITCAP('i'||val),'_'),2)
      END AS "ī�����̽�"
  FROM T;