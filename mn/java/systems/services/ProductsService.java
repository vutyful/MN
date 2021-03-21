package systems.services;

import java.util.List;

import systems.domains.ProductVO;

public interface ProductsService {
	List<ProductVO> getProductsList();
}
