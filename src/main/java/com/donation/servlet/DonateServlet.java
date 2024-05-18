package com.donation.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "DonateServlet", urlPatterns = {"/donateHistory"})
public class DonateServlet extends HttpServlet {
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        HttpSession session = request.getSession();
	        String uname = (String) session.getAttribute("name");
	        if (uname == null) {
	            response.sendRedirect("login.jsp");
	            return;
	        }

	        String organizationName = request.getParameter("organizationName");
	        String organizationAddress = request.getParameter("organizationAddress");
	        String donationType = request.getParameter("donationType");
	        String donationDate = request.getParameter("donationDate");
	        String donationId = request.getParameter("donationId");

	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/donation?useSSL=true", "root", "Christmastree@03");
	            String query = "INSERT INTO Donations (uname, organization_name, donation_date, organization_address, donation_type, donation_id) VALUES (?, ?, ?, ?, ?, ?)";
	            PreparedStatement stmt = conn.prepareStatement(query);
	            stmt.setString(1, uname);
	            stmt.setString(2, organizationName);
	            stmt.setString(3, donationDate);
	            stmt.setString(4, organizationAddress);
	            stmt.setString(5, donationType);
	            stmt.setString(6, donationId);
	            stmt.executeUpdate();

	            stmt.close();
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        response.sendRedirect("donateHistory.jsp");
	    }
	}

