package systems.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import systems.daos.ProductsDAO;
import systems.domains.ProductVO;

@Service
public class ProductsServiceImpl implements ProductsService{
	
	@Autowired
	private ProductsDAO productsDAO;

	@Override
	public List<ProductVO> getProductsList() {
		System.out.println("Service : getProductsList");
		return productsDAO.getProductsList();
	}

}
