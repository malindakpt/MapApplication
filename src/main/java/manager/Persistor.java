package manager;

import config.PersistorConfig;
import enums.PersistorType;
import manager.BaseManager.PersistanceInterface;

public class Persistor {
    public static PersistanceInterface getPersistorInstance() {
        if(PersistorConfig.TYPE == PersistorType.MOCK_DB){
            return MockEntityManager.getInstance();
        } else if(PersistorConfig.TYPE == PersistorType.SQL_DB){
            return SQLEntityManager.getInstance();
        } else{
            return null;
        }
    }
}
