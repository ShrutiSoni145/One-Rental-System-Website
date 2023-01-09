package com.project.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.project.bean.BikeBean;
import com.project.bean.CarBean;
import com.project.bean.ElectronicBean;
import com.project.bean.MarriageBean;

import com.project.dao.RentalDao;
;


public class RentHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private RentalDao dao;
	 
	  
	     
    public RentHandler() {
        super();
        dao=new RentalDao();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				String operation = request.getParameter("operation");
				if (operation.equalsIgnoreCase("BikeInsert")) {
					String BikeAverage = request.getParameter("bikeavg");
					int avg = Integer.parseInt(BikeAverage);
				
					
				
					BikeBean user = new BikeBean();
					user.setOwnerName(request.getParameter("ownername"));
					user.setOwnerContact(request.getParameter("ownercontact"));
					user.setBikeName(request.getParameter("bikename"));
					user.setBikeModel(request.getParameter("bikemodel"));
					user.setBikeAddress(request.getParameter("bikeaddress"));
					user.setBikeRent(request.getParameter("bikerate"));
					user.setBikeNumber(request.getParameter("bikenumber"));
					user.setBikeAverage(avg);
					dao.bikeAdd(user);
				//	redirect = "/index.jsp";
					//request.setAttribute("users", dao.getAllUsers());
					System.out.println("Record Added Successfully");

					
				RequestDispatcher rd = request.getRequestDispatcher("/itemAddSuccessfully.jsp");
				rd.forward(request, response);
				}
				else if (operation.equalsIgnoreCase("CarInsert")) {
					
					  String cavg = request.getParameter("caravg");
					  int avg =Integer.parseInt(cavg); 
					  String cnum = request.getParameter("carnumber"); 
					  int num = Integer.parseInt(cnum); 
					  String crate = request.getParameter("carrate");
					  int rate = Integer.parseInt(crate);
					  
					 
					CarBean user = new CarBean();
					user.setCarOwner(request.getParameter("oname"));
					user.setCOwnerContact(request.getParameter("ownercontact"));
					user.setCarName(request.getParameter("carname"));
					user.setCarModel(request.getParameter("carmodel"));
					user.setCarAverage(avg);
					user.setCarNumber(num);
					user.setCarAddress(request.getParameter("caraddress"));
					user.setCarRate(rate);
					/*
					 * user.setBikeDate(avg); user.setBikeAverage(num);
					 * user.setBikeAddress(request.getParameter("caraddress"));
					 * user.setBikeAverage(rate);
					 */
					dao.carAdd(user);
				//	redirect = "/index.jsp";
					//request.setAttribute("users", dao.getAllUsers());
					System.out.println("Record Added Successfully");

					
				RequestDispatcher rd = request.getRequestDispatcher("/itemAddSuccessfully.jsp");
				rd.forward(request, response);
				}
				else if (operation.equalsIgnoreCase("GardenInsert")) {
					
					  String c = request.getParameter("capacity");
					  int capa =Integer.parseInt(c); 
					  
					  String rat = request.getParameter("rate"); 
					  int rent = Integer.parseInt(rat); 
					
					 
					MarriageBean user = new MarriageBean();
					user.setGardenOwner(request.getParameter("ownername"));
					user.setGOwnerContact(request.getParameter("ownercontact"));
					user.setGardenName(request.getParameter("gname"));
					user.setGardenCapacity(capa);
					user.setGardenDate(request.getParameter("date"));
					
				
					user.setGardenSize(request.getParameter("size"));
					user.setGardenAddress(request.getParameter("address"));
					user.setFacalities(request.getParameter("fac"));
					user.setGardenRate(rent);
					
					dao.gardenAdd(user);
				//	redirect = "/index.jsp";
					//request.setAttribute("users", dao.getAllUsers());
					System.out.println("Record Added Successfully");

					
				RequestDispatcher rd = request.getRequestDispatcher("/itemAddSuccessfully.jsp");
				rd.forward(request, response);
				}
				else if (operation.equalsIgnoreCase("EInsert")) {
					
					  String irt = request.getParameter("irate");
					  int irent =Integer.parseInt(irt); 
					
					  
					 
					ElectronicBean user = new ElectronicBean();
					user.setItemOwner(request.getParameter("Oname"));
					user.setIOwnerContact(request.getParameter("Ocontact"));
					user.setItemName(request.getParameter("iname"));
					user.setItemBrand(request.getParameter("brand"));
					user.setItemAddress(request.getParameter("iadd"));
					user.setItemRate(irent);
					
					/*
					 * user.setBikeDate(avg); user.setBikeAverage(num);
					 * user.setBikeAddress(request.getParameter("caraddress"));
					 * user.setBikeAverage(rate);
					 */
					dao.itemAdd(user);
				//	redirect = "/index.jsp";
					//request.setAttribute("users", dao.getAllUsers());
					System.out.println("Record Added Successfully");

					
				RequestDispatcher rd = request.getRequestDispatcher("/itemAddSuccessfully.jsp");
				rd.forward(request, response);
				}
				
				/*
				 * if (operation.equalsIgnoreCase("ownerDetails")) { String bikename =
				 * request.getParameter("bikename"); //int uid = Integer.parseInt(userId);
				 * dao.ownerDetails(bikename); //redirect = "/listUser.jsp";
				 * //request.setAttribute("users", dao.getAllUsers());
				 * System.out.println("Owner Details Show Successfully");
				 * 
				 * RequestDispatcher rd = request.getRequestDispatcher("/OwnerDetails.jsp");
				 * rd.forward(request, response); }
				 */
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
