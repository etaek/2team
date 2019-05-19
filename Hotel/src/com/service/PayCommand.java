package com.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PayCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String[] payTypes = request.getParameterValues("payType");
		
		if(payTypes.length > 0)
		{
			try {
				
				if(payTypes[0].equals("1"))
				{
					RequestDispatcher dis = request.getRequestDispatcher("bankAccountDepositForm.jsp");
					dis.forward(request, response);
				}else if(payTypes[0].equals("2"))
				{
					RequestDispatcher dis = request.getRequestDispatcher("kakaoPayForm.jsp");
					dis.forward(request, response);
				}
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
