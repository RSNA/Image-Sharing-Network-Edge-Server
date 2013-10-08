update configurations
set value = 'https://clearinghouse.lifeimage.com/services/xdsrepositoryb'
where key = 'iti41-endpoint-uri';

update configurations
set value ='mllps://clearinghouse.lifeimage.com:8888'
where key = 'iti8-pix-uri';

update configurations
set value = 'mllps://clearinghouse.lifeimage.com:8890'
where key = 'iti8-reg-uri';


