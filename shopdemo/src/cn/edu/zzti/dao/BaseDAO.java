package cn.edu.zzti.dao;

import java.sql.SQLException;

import cn.edu.zzti.entity.PersonalInfoDO;

/**
 * Created by guoli on 17/7/10.
 */
public interface BaseDAO {

	void setPersonalInfo(String username, PersonalInfoDO p) throws SQLException;
}
