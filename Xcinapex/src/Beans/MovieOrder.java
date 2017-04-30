package Beans;

public class MovieOrder {
	
	private int id;
	private String accountId;
	private int movieId;
	private String dateAndTime;
	private int returnDate;
	
	public MovieOrder(){
		
	}
	
	public MovieOrder(int id, String accountId, int movieId, String dateAndTime, int returnDate){
		
		this.id = id;
		this.accountId = accountId;
		this.movieId = movieId;
		this.dateAndTime = dateAndTime;
		this.returnDate = returnDate;
		
	}
	
	public int getId(){
		return id;
	}
	
	public String getAccountId(){
		return accountId;
	}
	
	public int getMovieId(){
		return movieId;
	}
	
	public String getDateAndTime(){
		return dateAndTime;
	}
	
	public int getReturnDate(){
		return returnDate;
	}
	
	public void setId(int id){
		
	}
	
	public void setAccountId(String accountId){
		
	}
	
	public void setMovieId(int movieId){
		
	}
	
	public void setDateAndTime(String dNT){
		
	}
	
	public void setReturnDate(String rd){
		
	}
	
	
}