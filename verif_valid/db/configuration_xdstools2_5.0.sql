-- Configuration values when we point the Edge Server
-- at a local copy of the XDSTools software

update configurations
set value = 'http://nibib-test.wustl.edu:9280/xdstools2/sim/clearinghouse__rr/rep/prb'
where key = 'iti41-doc-endpoint-uri';

update configurations
set value = 'http://nibib-test.wustl.edu:9280/xdstools2/sim/clearinghouse__rr/rep/prb'
where key = 'iti41-img-endpoint-uri';

update configurations
set value ='mllp://nibib-test.wustl.edu:5000'
where key = 'iti8-reg-uri';

update configurations
set value ='mllp://nibib-test.wustl.edu:5000'
where key = 'iti9-pix-uri';

