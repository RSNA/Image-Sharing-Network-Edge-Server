update configurations
set value = 'http://test.rsnaclearinghouse.com:9090/services/xdsrepositoryb'
where key = 'iti41-endpoint-uri';

update configurations
set value ='mllp://test.rsnaclearinghouse.com:8887'
where key = 'iti8-pix-uri';

update configurations
set value ='mllp://test.rsnaclearinghouse.com:8891'
where key = 'iti8-reg-uri';


