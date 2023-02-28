package exercise2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/image1")
public class ImageServlet1 extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public ImageServlet1() 
    {
        super();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		PrintWriter writer = response.getWriter();
		String img = "<img src='./resources/image_1.jpg'>";
		String html = "<html> <body>" +img+ "</body> </html>";
		writer.write(html);
	}

    public void doPost(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
		
	}
}
