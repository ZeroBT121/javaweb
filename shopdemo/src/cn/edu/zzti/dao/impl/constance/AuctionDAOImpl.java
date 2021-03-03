package cn.edu.zzti.dao.impl.constance;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.edu.zzti.dao.AuctionDAO;
import cn.edu.zzti.entity.AuctionDO;
import cn.edu.zzti.entity.PersonalInfoDO;

public class AuctionDAOImpl implements AuctionDAO{
	private static Map<String,AuctionDO> auctionList = new HashMap<String,AuctionDO>();

	static{
		for(int i=0;i<20;i++){
			AuctionDO auc = new AuctionDO("商品"+i,"description"+i,100+(int)(Math.random()*100));
			auctionList.put(auc.getId(),auc);
		}
	}
	public AuctionDO getAuction(String id) {
		return auctionList.get(id);
	}

	public void addAuction(AuctionDO auc) {
		auctionList.put(auc.getId(),auc);
	}

	public List<AuctionDO> getAll() {
		return new ArrayList<AuctionDO>(auctionList.values());
	}

	public void deleteAuction(String id) {
		auctionList.remove(id);
	}

	
	public void updateAuction(AuctionDO auc) {
		auctionList.put(auc.getId(), auc);
	}

	public void setPersonalInfo(String username, PersonalInfoDO p) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	public PersonalInfoDO getPersonalInfo(String username) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
}