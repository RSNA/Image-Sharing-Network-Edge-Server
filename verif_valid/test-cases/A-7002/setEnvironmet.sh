#
#  Setup environment variables used in A-7002 tests
#
# Local file directories 

export EXTERNALTOOLSDIR='/home/rsna/Image-Sharing-Network-Edge-Server/verif_valid/External-Tools'
export NISTSCRIPTDIRECTORY='/usr/local/tomcat/apache-tomcat-7.0.62/bin'
export TEMPROOT='/tmp'
export MESADIR='/opt/mesa'
export MESATOOLDIR='/opt/mesa/bin'
export DATAROOT='/home/rsna/Image-Sharing-Network-Edge-Server/verif_valid/data'
export DCM4CHEDIR='/opt/dcm4che/dcm4che-2.0.25'


# Image Share URLs
export EDGEHOST='10.242.100.64'

export PACSAETITLE='DCM4CHEE'
export PACSHOST='10.242.100.66' 
export PACSPORT='11112'

export MIRTHHL7HOST='10.242.100.64'
export MIRTHHL7PORT='20000'


# NIST Repository URLs
#export REGISTRYURL='http://localhost:3600'
export REGISTRYURL='http://localhost:28080/xdstools2/sim/a2de485d-22ea-4c42-937d-8e603e9c2266/reg/prb'
export REPOSITORYURL='http://localhost:28080/xdstools2/sim/a2de485d-22ea-4c42-937d-8e603e9c2266/rep/prb'
export REPOSITORYUID='1.3.6.1.4.1.19376.2.840.1.1.2.1'
