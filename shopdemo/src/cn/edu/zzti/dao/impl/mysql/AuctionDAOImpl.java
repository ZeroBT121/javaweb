package cn.edu.zzti.dao.impl.mysql;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.edu.zzti.dao.AuctionDAO;
import cn.edu.zzti.entity.AuctionDO;
import cn.edu.zzti.entity.PersonalInfoDO;
import cn.edu.zzti.util.jdbc.DBUtil;

public class AuctionDAOImpl implements AuctionDAO{

	public AuctionDO getAuction(String id) throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DBUtil.getDataSource());
		String sql="select * from auction where id = ?";
		AuctionDO auctionDO = queryrunner.query(sql, new BeanHandler<AuctionDO>(AuctionDO.class), id);
		return auctionDO;
	}

	public void addAuction(AuctionDO auc) throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DBUtil.getDataSource());
		String sql="insert into auction values(?,?,?,?)";
		Object[] params = new Object[]{UUID.randomUUID().toString(),auc.getTitle(),auc.getDescription(),auc.getPrice()};
		queryrunner.update(sql, params);
	}

	
	public List<AuctionDO> getAll() throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DBUtil.getDataSource());
		String sql="select * from auction ";
		List<AuctionDO> list = queryrunner.query(sql, new BeanListHandler<AuctionDO>(AuctionDO.class));
		return list;
	}

	
	public void deleteAuction(String id) throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DBUtil.getDataSource());
		String sql="delete from auction where id=?";
		queryrunner.update(sql, id);
	}

	
	public void updateAuction(AuctionDO auc) throws SQLException {
		QueryRunner queryrunner = new QueryRunner(DBUtil.getDataSource());
		String sql="update auction set title=?,description=?,price=? where id=?";
		Object[] params = new Object[]{auc.getTitle(),auc.getDescription(),auc.getPrice(),auc.getId()};
		queryrunner.update(sql, params);
		
	}

	public void setPersonalInfo(String username, PersonalInfoDO p) throws SQLException {
		// TODO Auto-generated method stub
		
	}

}
