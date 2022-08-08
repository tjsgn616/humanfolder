--1. ��Ƽ��Ʈ�� �� ������� ���(�ſ콬��)
SELECT COUNT(ArtistId)  FROM Artist a ;	--275

--2. ��Ƽ��Ʈ�� �ߺ����� ���� �ٹ��Ǽ� ���(����)
-- ��) 100���� �ٹ��߿� a��°����� 4��, b��°����� 13���� �ٹ��� �´ٸ� 85
SELECT  COUNT(DISTINCT ArtistId)  FROM Album ;  --204

--3. ��(Track)�� ����(Milliseconds)�� 4���� �Ѵ� ���� �̸�(Name)�� �����ּ���.(����)
SELECT Name , Milliseconds  FROM Track t ;
--60��=1��.  4��=240000ms
SELECT Name , Milliseconds  FROM Track t WHERE Milliseconds>240000;


--4. �帣�� �ٹ��� �ƴ϶� � �ο��ȴ�.
--  Genre(�帣)���� ��� ��(Track)�� �ִ��� �����ּ���.(����)
SELECT TrackId  FROM Track t GROUP BY GenreId;

--���,  �帣��
SELECT g.Name as '�帣��' --�帣��
     , count(t.TrackId) --���ǰ���
  FROM Track t 
  JOIN Genre g 
    ON t.GenreId = g.GenreId
 GROUP BY t.GenreId;
--25


--5. Artistid, Name, �� ��Ƽ��Ʈ�� ����Ѿٹ�(Album)�Ǽ��� �ٹ����� ������������ ���(�����. ����)
SELECT a.ArtistId , a.Name , count(b.AlbumId) as �ٹ���
  FROM Artist a 
  JOIN Album b
    ON a.ArtistId = b.ArtistId
 GROUP BY b.ArtistId 
 ORDER BY count(b.AlbumId) desc;
