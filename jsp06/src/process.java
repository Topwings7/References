

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex06.el.Car;
import ex06.el.Person;
import ex06.el.Phone;

@WebServlet("/process")
public class process extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public process() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
		
	}
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		LocalDate birth = LocalDate.parse(request.getParameter("birth"));
		String email = request.getParameter("email");
		int carnumber = Integer.parseInt(request.getParameter("carnumber"));
		int mileage = Integer.parseInt(request.getParameter("mileage"));
		String carname = request.getParameter("carname");
		String carbrand = request.getParameter("carbrand");
		String[] model = request.getParameterValues("model");
		String[] color = request.getParameterValues("color");
		String[] brand = request.getParameterValues("brand");
		String[] createDate = request.getParameterValues("create");
		
		ArrayList<Phone> phonelist = new ArrayList<Phone>();
		for (int i = 0; i < model.length; i++) {
			Phone phone = new Phone();
			phone.setModel(model[i]);
			phone.setColor(color[i]);
			phone.setBrand(brand[i]);
			phone.setCreateDate(LocalDate.parse(createDate[i]));
			phonelist.add(phone);
		}
		Car car = new Car();
		car.setCarbrand(carbrand);
		car.setCarname(carname);
		car.setCarnumber(carnumber);
		car.setMileage(mileage);
		
		Person person = new Person(name, birth, email, car, phonelist);
		System.out.println(person);
		request.setAttribute("person", person);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
		dispatcher.forward(request, response);
		
		}
	}

