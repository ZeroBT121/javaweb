package cn.edu.zzti.dao;

import java.sql.SQLException;
import java.util.List;

import cn.edu.zzti.entity.UserDO;

public interface UserDAO extends BaseDAO{
	/**
	 * 获得系统中的所有用户
	 * @return
	 */
	public List<UserDO> getAll() throws SQLException;
	/**
	 * 用于登录校验
	 * @param username
	 * @param password
	 * @return
	 */
	public UserDO findUser(String username, String password) throws SQLException;
	/**
	 * 在系统中创建一个用户的信息
	 * @param u
	 * @return
	 */
	public int insertUser(UserDO u) throws SQLException;
	/**
	 * 根据用户的id删除一个用户
	 * @param id
	 * @return
	 */
	public int deleteUser(String id) throws SQLException;

}
