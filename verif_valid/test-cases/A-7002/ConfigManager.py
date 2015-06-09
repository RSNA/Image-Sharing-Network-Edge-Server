'''
Created on Apr 16, 2013

@author: mkelse01
'''

class ConfigManager():
    

    def __init__(self, configFileName=None):
        self.fileName = configFileName
        if self.fileName == None:
            configFileName = 'config'
        configDict = {};
        # Attempt to load config file and parameters
        try:
            f = open(configFileName)
        except IOError, Argument:
            print 'Error attempting to open config file:', configFileName, Argument
        else:
            for line in f:
                line = line.strip(' ;\n')
                lineParts = line.split('=')
                if len(lineParts) == 2 and not line.startswith('#'):
                    configDict[lineParts[0].strip()] = lineParts[1].strip(' \'')
            f.close()
            try:
                self.TEMP_ROOT                           = configDict['TEMP_ROOT'                           ]
                self.DCM4CHE_HOME                        = configDict['DCM4CHE_HOME'                        ]
                self.MESA_TARGET                         = configDict['MESA_TARGET'                         ]
                self.VERIF_VALID_HOME                    = configDict['VERIF_VALID_HOME'                    ]
                self.EDGE_HOST                           = configDict['EDGE_HOST'                           ]
                self.EDGE_DB                             = configDict['EDGE_DB'                        ]
                self.EDGE_DB_USER                        = configDict['EDGE_DB_USER'                        ]
                self.EDGE_DB_PW                          = configDict['EDGE_DB_PW'                          ]
                self.CTP1_AE_TITLE                       = configDict['CTP1_AE_TITLE'                       ]
                self.CTP1_HOST                           = configDict['CTP1_HOST'                           ]
                self.CTP1_PACS_PORT                      = configDict['CTP1_PACS_PORT'                      ]
                self.CTP2_AE_TITLE                       = configDict['CTP2_AE_TITLE'                       ]
                self.CTP2_HOST                           = configDict['CTP2_HOST'                           ]
                self.CTP2_PACS_PORT                      = configDict['CTP2_PACS_PORT'                      ]
                self.MIRTH_HL7_HOST                      = configDict['MIRTH_HL7_HOST'                      ]
                self.MIRTH_HL7_PORT                      = configDict['MIRTH_HL7_PORT'                      ]
                self.PACS1_AE_TITLE                      = configDict['PACS1_AE_TITLE'                      ]
                self.PACS1_HOST                          = configDict['PACS1_HOST'                          ]
                self.PACS1_PORT                          = configDict['PACS1_PORT'                          ]
                self.PACS2_AE_TITLE                      = configDict['PACS2_AE_TITLE'                      ]
                self.PACS2_HOST                          = configDict['PACS2_HOST'                          ]
                self.PACS2_PORT                          = configDict['PACS2_PORT'                          ]
                self.NIST_TOMCAT_BIN                     = configDict['NIST_TOMCAT_BIN'                     ]
                self.REGISTRY_URL                        = configDict['REGISTRY_URL'                        ]
                self.REPOSITORY_URL                      = configDict['REPOSITORY_URL'                      ]
                self.REPOSITORY_UID                      = configDict['REPOSITORY_UID'                      ]
                self.PATIENT_ID_ASSIGNING_AUTHORITY      = configDict['PATIENT_ID_ASSIGNING_AUTHORITY'      ]
                self.PATIENT_ID_ASSIGNING_AUTHORITY_TYPE = configDict['PATIENT_ID_ASSIGNING_AUTHORITY_TYPE' ]       
            except KeyError, Argument:
                print 'Error reading configuration keys: ', Argument  
                
if __name__ == "__main__":
    cm = ConfigManager('../util/config')
    if cm.PATIENT_ID_ASSIGNING_AUTHORITY_TYPE == 'ISO':
        print 'Completed'
    else:
        print 'Failed to read configuration'
