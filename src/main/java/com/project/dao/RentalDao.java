package com.project.dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.bean.BikeBean;
import com.project.bean.CarBean;
import com.project.bean.ElectronicBean;
import com.project.bean.MarriageBean;
import com.project.bean.UserBean;
import com.project.dbconnection.ConnectionProvider;


public class RentalDao {
	private Connection conn;

    public RentalDao() {
    	conn = ConnectionProvider.getConnection();
    }
	public void bikeAdd(BikeBean bikebean) {
		
		try {
        	String sql = "INSERT INTO addbike(ownername,ownercontact,bikename,model,average,number,address,bikerent)" +" VALUES (?,?,?, ?, ?, ?, ?,? )";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, bikebean.getOwnerName());
            ps.setString(2, bikebean.getOwnerContact());
            ps.setString(3, bikebean.getBikeName());
            ps.setString(4, bikebean.getBikeModel());
            ps.setInt(5, bikebean.getBikeAverage()); 
            ps.setString(6, bikebean.getBikeNumber());    
            ps.setString(7, bikebean.getBikeAddress());    
            ps.setString(8, bikebean.getBikeRent());    
 
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }              

		
	}
public void carAdd(CarBean bikebean) {
		
		try {
        	String sql = "INSERT INTO addcar(ownername,ownercontact,carname,carmodel,caraverage,carnumber,caraddress,carrate)" +" VALUES (?,?,?, ?, ?, ?, ?,? )";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, bikebean.getCarOwner());
            ps.setString(2, bikebean.getCOwnerContact());
            ps.setString(3, bikebean.getCarName());
            ps.setString(4, bikebean.getCarModel());
            ps.setInt(5, bikebean.getCarAverage()); 
            ps.setInt(6, bikebean.getCarNumber());    
            ps.setString(7, bikebean.getCarAddress());    
            ps.setInt(8, bikebean.getCarRate());    
 
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }              

		
	}
public void gardenAdd(MarriageBean marbean) {
	
	try {
    	String sql = "INSERT INTO addmarriage(ownername,ownercontact,gardenname,capacity,date,size,address,facalities,rate)" +" VALUES (?,?,?, ?, ?, ?, ?,? ,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        
        ps.setString(1, marbean.getGardenOwner());
        ps.setString(2, marbean.getGOwnerContact());
        ps.setString(3, marbean.getGardenName());
        ps.setInt(4, marbean.getGardenCapacity());
        ps.setString(5, marbean.getGardenDate()); 
        ps.setString(6, marbean.getGardenSize());    
        ps.setString(7, marbean.getGardenAddress());    
        ps.setString(8, marbean.getFacalities());  
        ps.setInt(9, marbean.getGardenRate());

        ps.executeUpdate();

    } catch (SQLException e) {
        e.printStackTrace();
    }              

	
}
public void itemAdd(ElectronicBean bikebean) {
	
	try {
    	String sql = "INSERT INTO additem(ownername,ownercontact,itemname,address,itemrate,itembrand)" +" VALUES (?,?,?, ?, ?,? )";
        PreparedStatement ps = conn.prepareStatement(sql);
        
        ps.setString(1, bikebean.getItemOwner());
        ps.setString(2, bikebean.getIOwnerContact());
        ps.setString(3, bikebean.getItemName());
        ps.setString(4, bikebean.getItemAddress());
        ps.setInt(5, bikebean.getItemRate()); 
        ps.setString(6, bikebean.getItemBrand()); 
            

        ps.executeUpdate();

    } catch (SQLException e) {
        e.printStackTrace();
    }              

	
}
	
	
    public List<BikeBean> getAllBikes() {
        List<BikeBean> bikes = new ArrayList<BikeBean>();
        try {
        	String sql = "SELECT * FROM addbike";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BikeBean bikeBean = new BikeBean();
                bikeBean.setBikeName(rs.getString("bikename"));
                bikeBean.setBikeModel(rs.getString("model"));
                bikeBean.setBikeAverage(rs.getInt("average"));  
                bikeBean.setBikeNumber(rs.getString("number"));  
                bikeBean.setBikeAddress(rs.getString("address"));  
                bikeBean.setBikeRent(rs.getString("bikerent")); 
                bikeBean.setOwnerName(rs.getString("ownername"));  
                bikeBean.setOwnerContact(rs.getString("ownercontact")); 
                bikes.add(bikeBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bikes;
}

	
    public List<MarriageBean> getMarriageGarden() {
        List<MarriageBean> Marriage = new ArrayList<MarriageBean>();
        try {
        	String sql = "SELECT * FROM addmarriage";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                MarriageBean marriageBean = new MarriageBean();
                marriageBean.setGardenOwner(rs.getString("ownername"));
                marriageBean.setGOwnerContact(rs.getString("ownercontact"));
                marriageBean.setGardenName(rs.getString("gardenname"));  
                marriageBean.setGardenCapacity(rs.getInt("capacity"));  
                marriageBean.setGardenDate(rs.getString("date"));  
                marriageBean.setGardenSize(rs.getString("size")); 
                marriageBean.setGardenAddress(rs.getString("address"));  
                marriageBean.setFacalities(rs.getString("facalities")); 
                marriageBean.setGardenRate(rs.getInt("rate"));  
                Marriage.add(marriageBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Marriage;
}


    public List<CarBean> getAllCar() {
        List<CarBean> cars = new ArrayList<CarBean>();
        try {
        	String sql = "SELECT * FROM addcar";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CarBean carBean = new CarBean();
                carBean.setCarOwner(rs.getString("ownername"));
                carBean.setCOwnerContact(rs.getString("ownercontact"));
                carBean.setCarName(rs.getString("carname"));  
                carBean.setCarModel(rs.getString("carmodel"));  
                carBean.setCarAverage(rs.getInt("caraverage"));  
                carBean.setCarNumber(rs.getInt("carnumber")); 
                carBean.setCarAddress(rs.getString("caraddress"));  
                carBean.setCarRate(rs.getInt("carrate")); 
                cars.add(carBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cars;
}

    public List<ElectronicBean> getElectronics() {
        List<ElectronicBean> Electronic = new ArrayList<ElectronicBean>();
        try {
        	String sql = "SELECT * FROM additem";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	ElectronicBean ElecBean = new ElectronicBean();
            	ElecBean.setItemOwner(rs.getString("ownername"));
            	ElecBean.setIOwnerContact(rs.getString("ownercontact"));
            	ElecBean.setItemName(rs.getString("itemname"));  
            	ElecBean.setItemAddress(rs.getString("address"));  
            	ElecBean.setItemBrand(rs.getString("itembrand"));  
            	ElecBean.setItemRate(rs.getInt("itemrate")); 
                 
                Electronic.add(ElecBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return Electronic;
}
   
}