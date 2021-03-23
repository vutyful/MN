package systems.daos;

import java.util.List;

import systems.domains.ProductVO;

public interface ProductsDAO {
	List<ProductVO> getProductsList(String cate, String age);
}
