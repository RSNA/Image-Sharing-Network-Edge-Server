# ihe_oru.tpl: Template for HL7 ORU messages
#
MSH
 1 |
 2 ^~\&
 3 $SENDING_APP$
 4 $SENDING_FACILITY$
 5 $RECEIVING_APP$
 6 $RECEIVING_FACILITY$
 7 
 8 
 9 ORU^R01
 10 $MESSAGE_CONTROL_ID$
 11 P
 12 2.3.1
 13 
 14 
 15 
 16 
 17 
 18 $CHARSET$ 
PID
 1
 2 
 3 $PATIENT_ID$
 4 
 5 $PATIENT_NAME$
 6 
 7 $DATE_TIME_BIRTH$
 8 $SEX$
 9 
 10 $RACE$
 11 $PATIENT_ADDRESS$
 12 
 13 
 14 
 15 
 16 
 17 
 18 $PATIENT_ACCOUNT_NUM$
 19 
 20 
 21 
 22 
 23
 24
 25
 26
 27
 28
 29
 30 
OBR
 1 $SETID_OBR$
 2 $PLACER_ORDER_NUMBER$
 3 $FILLER_ORDER_NUMBER$
 4
 5
 6
 7 
 8
 9
 10 
 11 
 12 
 13
 14 
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25 F
 26 
 27
 28 
 29 
 30
 31 
 32 
 33 
 34 
 35 
 36 
 37 
 38 
 39 
 40 
 41
 42 
 43 
 44
OBX
 1 1
 2 TX
 3 Text
 4
 5 Text report goes here
