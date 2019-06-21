#!/usr/bin/env python
# aw_debug

import logging

LOG_FORMAT = '%(asctime)s - %(levelname)s  [%(name)s] %(funcName)s -> %(message)s'
logging.basicConfig(filename = 'console-aw.log',  
                            level = logging.DEBUG,
                            format = LOG_FORMAT)
logger = logging.getLogger(__name__)
logger.debug('Logging started')

def main():
    return
    
if __name__ == "__main__":
    main()
