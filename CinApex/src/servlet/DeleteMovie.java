package servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Manager;
import Beans.Movie;
import utils.DBUtils;
import utils.setUpConnection;

@WebServlet("/DeleteMovie")
public class DeleteMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteMovie() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		HttpSession session = request.getSession(true);
		//System.out.println(session.getAttribute("loggedInUser").getClass());
		if (session.getAttribute("loggedInUser")!=null){//make sure someone is logged in to check
			Object usertype = session.getAttribute("loggedInUser");
			if(!(usertype instanceof Manager)) 
			 {
				RequestDispatcher dispatcher = request.getServletContext()
		                .getRequestDispatcher("/WEB-INF/view/404EmpOnly.jsp");
		        dispatcher.forward(request, response);
			   return; //necessary to make the redirect happen right now
			 }
		}else if(session.getAttribute("loggedInUser")==null){
			RequestDispatcher dispatcher = request.getServletContext()
	                .getRequestDispatcher("/WEB-INF/view/404.jsp");
	        dispatcher.forward(request, response);
		   return;
		}

   		String jdbc_driver= "com.mysql.jdbc.Driver";  
		String url = "jdbc:mysql://localhost:3306/" + setUpConnection.DATABASENAME;
   		String user = setUpConnection.USERNAME;
   		String pass = setUpConnection.PASSWORD;

   		java.sql.Connection conn = null;
		List<Movie> allMovie = null;
		String errorString = null;

		try {
			Class.forName(jdbc_driver).newInstance();
			conn = DriverManager.getConnection(url, user, pass);
			conn.setAutoCommit(false);

			int id = Integer.parseInt(request.getParameter("MovieId2"));
			System.out.println("Trying to delete MovieId : " + id);

			// Delete Rental by MovieId
			DBUtils.deleteRentalByMovieId(conn, id);
			// Delete MovieOrder by MovieId
			DBUtils.deleteMovieOrderByMovieId(conn, id);
			// Delete AppearedIn by MovieId
			DBUtils.deleteAppearedInByMovieId(conn, id);
			// Delete MovieQ by MovieId
			DBUtils.deleteMovieQByMovieId(conn, id);
			// Delete Movie
			
			conn.commit();
			
			DBUtils.deleteMovie(conn, id);

			conn.commit();
			allMovie = DBUtils.queryMovies(conn);

		} catch (Exception e) {
			// Any error is grounds for rollback
			try {
				conn.rollback();
				System.out.println("Rolling back..");
				e.printStackTrace();
			} catch (SQLException ignored) {
			}
		}
		request.setAttribute("errorString", errorString);
		request.setAttribute("MovieList", allMovie);
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/view/EditDelMovie.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
