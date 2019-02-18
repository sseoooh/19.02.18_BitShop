package command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import domain.CustomerDTO;
import proxy.PageProxy;
import proxy.Pagination;
import proxy.Proxy;
import proxy.RequestProxy;
import service.CustomerServiceImpl;

public class RetrieveCommand extends Command{
	
	public RetrieveCommand(Map<String,Proxy> pxy) {
		super(pxy);
		RequestProxy req = (RequestProxy) pxy.get("req");
		HttpServletRequest request = req.getRequest();
			Proxy paging = new Pagination();
			paging.carryOut(request);
			Proxy pagePxy = new PageProxy();
			pagePxy.carryOut(paging);		

			CustomerDTO cus = new CustomerDTO();
			cus.setCustomerID(request.getParameter("customerID"));
			System.out.println("RetrieveCommand내부"+request.getParameter("customerID"));
			cus = CustomerServiceImpl.getInstance().retrieveCustomer(cus);
			request.setAttribute("cus", cus);
	}
}
	