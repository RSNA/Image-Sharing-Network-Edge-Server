update configurations
set value = 'https://test.rsnaclearinghouse.com/services/xdsrepositoryb'
where key = 'iti41-endpoint-uri';

update configurations
set value ='mllp://test.rsnaclearinghouse.com:8887'
where key = 'iti8-pix-uri';

update configurations
set value ='mllp://test.rsnaclearinghouse.com:8891'
where key = 'iti8-reg-uri';


