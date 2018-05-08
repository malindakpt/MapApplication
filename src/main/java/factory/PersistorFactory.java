package factory;

import config.PersistorConfig;
import enums.PersistorType;
import manager.BaseManager.PersistanceInterface;
import manager.MockEntityManager;
import manager.SQLEntityManager;

/**
 * Created by MalindaK on 5/8/2018.
 */
public class PersistorFactory {
    public static PersistanceInterface getPersistor() {
        if(PersistorConfig.TYPE == PersistorType.MOCK_DB){
            return MockEntityManager.getInstance();
        } else if(PersistorConfig.TYPE == PersistorType.SQL_DB){
            return SQLEntityManager.getInstance();
        } else{
            return null;
        }
    }
}
