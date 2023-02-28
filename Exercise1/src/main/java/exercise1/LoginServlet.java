package exercise1;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private HashMap<String,String> account;
       
    public LoginServlet() 
    {
        super();
        this.account = data();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) 
	        throws ServletException, IOException 
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(checkAccount(username, password)) 
			response.getWriter().write("<html><body><p>Name/Password match</p></body></html>");
		else 
			response.getWriter().write("<html><body><p>Name/Password does not match</p></body></html>");
	}
    
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	        throws ServletException, IOException 
	{
		RequestDispatcher rd = request.getRequestDispatcher("./index.jsp");
		rd.forward(request, response);
	}

	private HashMap<String,String> data() 
	{
		HashMap<String,String> account = new HashMap<String,String>();
		String[] username = {"admin", "duy@gmail.com"};
		String[] pass = {"123", "abc"};
		for(int i = 0; i < username.length; i++) 
			account.put(username[i], pass[i]);
		return account;
	}
	
	public boolean checkAccount(String username, String password) 
	{
		return account.get(username).equals(password);
	}
}
