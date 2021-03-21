package systems.daos;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import systems.domains.ProductVO;

@Repository
public class ProductsDAOImpl implements ProductsDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ProductVO> getProductsList() {
		System.out.println("DAO : getProductsList");
		return mybatis.selectList("ProductMAP.getProductsList");
	}

}
