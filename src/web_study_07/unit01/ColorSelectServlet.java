package web_study_07.unit01;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ColorSelectServlet")
public class ColorSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

    private void process(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        int color = Integer.parseInt(request.getParameter("color"));
        /*        String arg = null;
        String val = null;
        switch(color) {
            case 1: 
                arg = "color: red;";
                val = "빨강";
            break;
            case 2: 
                arg = "color: green;";
                val = "초록";
            break;
            default : 
                arg = "color: blue;";
                val = "파랑";
        }
        request.setAttribute("arg", arg);
        request.setAttribute("val", val);*/
        
        Map<String, String> map = new HashMap<String, String>();
        switch(color) {
            case 1: 
                map.put("attr", "color: red;");
                map.put("txt", "빨강");
            break;
            case 2: 
                map.put("attr", "color: green;");
                map.put("txt", "초록");
            break;
            default : 
                map.put("attr", "color: blue;");
                map.put("txt", "파랑");
        }
        request.setAttribute("map", map);
        
        request.getRequestDispatcher("12_colorSelect_servlet.jsp").forward(request, response);
    }

}





