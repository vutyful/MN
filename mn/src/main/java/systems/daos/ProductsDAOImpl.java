package systems.daos;

import java.util.HashMap;
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
	public List<ProductVO> getProductsList(String cate, String age) {
		System.out.println("DAO : getProductsList");
		HashMap<String, String> temp= new HashMap<String, String>();
		temp.put("cate", cate);
		temp.put("age", age);
		return mybatis.selectList("ProductMAP.getProductsList", temp);
	}

}
