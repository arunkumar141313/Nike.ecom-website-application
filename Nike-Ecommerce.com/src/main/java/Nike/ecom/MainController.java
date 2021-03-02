package Nike.ecom;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MainController {

	@RequestMapping("/Register")
	public ModelAndView register(@RequestParam("username") String name, @RequestParam("password") String password,
			@RequestParam("email") String email, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView();

		RegisterDao redao = new RegisterDao();
		Session ses = redao.reigister_db();
		Transaction tlog = ses.beginTransaction();

		RegisterPojo regp = new RegisterPojo();
		regp.setUsername(name);
		regp.setPassword(password);
		regp.setEmail(email);

		ses.save(regp);
		tlog.commit();

		System.out.println(name + " " + password + " " + email);
		mav.setViewName("Homepage2.jsp");

		return mav;

	}

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("email") String remail, @RequestParam("password") String password,
			HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView logmav = new ModelAndView();

		RegisterDao redao = new RegisterDao();
		Session ses = redao.reigister_db();
		Transaction tlog = ses.beginTransaction();

		HttpSession usersession = request.getSession();

		RegisterPojo rp = ses.get(RegisterPojo.class, remail);

		if (password.equals(rp.getPassword())) {

			session.setAttribute("username", rp.getUsername());

			usersession.setAttribute("validate", rp.getEmail());

			logmav.setViewName("Homepage2.jsp");
		} else {

			logmav.addObject("warning", "Invalid Credentials");
			logmav.setViewName("Login.jsp");

		}
		tlog.commit();

		return logmav;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView logoutmav = new ModelAndView();

		HttpSession logoutsession = request.getSession(true);
		logoutsession.invalidate();
		logoutmav.setViewName("Home-Page.jsp");

		return logoutmav;
	}

	@RequestMapping("/products_list")
	public ModelAndView product_list(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("Category") String category) {

		@SuppressWarnings("unused")
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();

		RegisterDao redao = new RegisterDao();
		Session ses = redao.reigister_db();

		@SuppressWarnings("unchecked")
		Query<ProductsPojo> query = ses.createQuery("from ProductsPojo where category = '" + category + "'");
		List<ProductsPojo> plist = query.list();
		mav.addObject("product_list", plist);

		Transaction tplp = ses.beginTransaction();
		mav.setViewName("ProductListing.jsp");
		tplp.commit();

		return mav;
	}

	@RequestMapping("/products_despription")
	public ModelAndView products_desc(@RequestParam("pid") String pid, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView pdmav = new ModelAndView();

		RegisterDao redao = new RegisterDao();
		Session ses = redao.reigister_db();

		/* Image code */

		/*
		 * ProductsPojo product = null;
		 * 
		 * if(pid!=null) {
		 * 
		 * product = findProduct(pid);
		 * 
		 * } if(product!=null && product.getImage()!=null) {
		 * response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		 * response.getOutputStream().write(product.getImage());
		 * 
		 * 
		 * } response.getOutputStream().close();
		 */

		@SuppressWarnings("unchecked")
		Query<ProductsPojo> query = ses.createQuery("from ProductsPojo where id = '" + pid + "'");

		List<ProductsPojo> pdsp = query.list();
		Transaction tpdp = ses.beginTransaction();

		pdmav.addObject("product_dsp", pdsp);

		pdmav.setViewName("PDP.jsp");
		tpdp.commit();

		return pdmav;

	}

	/*
	 * public ProductsPojo findProduct(String pid) throws Exception {
	 * 
	 * RegisterDao logdao = new RegisterDao(); Session session =
	 * logdao.reigister_db(); Transaction tlog = session.beginTransaction();
	 * 
	 * 
	 * 
	 * Criteria crit = session.createCriteria(ProductsPojo.class);
	 * crit.add(Restrictions.eq("code", pid)); return
	 * (ProductsPojo)crit.uniqueResult();
	 * 
	 * }
	 */

	@RequestMapping("/addtocart")
	public ModelAndView cart(@RequestParam("items") String items, HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView cartmav = new ModelAndView();

		RegisterDao redao = new RegisterDao();
		Session ses = redao.reigister_db();
		Transaction tlog = ses.beginTransaction();

		HttpSession httpsession = request.getSession();

		if (httpsession.getAttribute("validate") != null) {

			String email = (String) httpsession.getAttribute("validate");

			@SuppressWarnings("unchecked")
			Query<ProductsPojo> query = ses.createQuery("from ProductsPojo where id = '" + items + "'");
			List<ProductsPojo> pdsp = query.list();

			CartPojo cp = new CartPojo();

			cp.setEmail(email);
			cp.setId(pdsp.get(0).getId());
			cp.setImage(pdsp.get(0).getImage());
			cp.setName(pdsp.get(0).getName());
			cp.setPrice(pdsp.get(0).getPrice());

			ses.save(cp);

			tlog.commit();
			cartmav.setViewName("Homepage2.jsp");
		}

		else {
			cartmav.setViewName("Login.jsp");
		}

		return cartmav;
	}

	@RequestMapping("/cart")
	public ModelAndView cartpage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		ModelAndView cart = new ModelAndView();

		RegisterDao redao = new RegisterDao();
		Session ses = redao.reigister_db();
		Transaction tlog = ses.beginTransaction();

		HttpSession htsession = request.getSession();

		if (htsession.getAttribute("validate") != null) {

			String cartemail = (String) htsession.getAttribute("validate");

			@SuppressWarnings("unchecked")
			Query<CartPojo> cquery = ses.createQuery("from CartPojo where email = '" + cartemail + "'");
			List<CartPojo> cartlist = cquery.list();

			for (CartPojo cartPojo : cartlist) {

				System.out.println(cartPojo.getName());
			}

			cart.addObject("cart_list", cartlist);

			cart.setViewName("Cart.jsp");
			tlog.commit();
		}

		else {
			cart.setViewName("Login.jsp");
		}

		return cart;
	}

}
