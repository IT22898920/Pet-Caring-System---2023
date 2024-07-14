package com.service;

/*attributes of the class*/
public class service {
	private int serviceID;
	private String serviceName;
	private String model;
	private String petNum;
	private String date;
    private String email;
			
	
/*overloaded constructor*/
public service(int serviceID, String serviceName, String petNum, String model,String date,String email) {
	super();
	this.serviceID = serviceID;
	this.serviceName = serviceName;
	this.petNum = petNum;
	this.model = model;
	this.date = date;
	this.email = email;	
	
 }


/*getters of the attributes*/
public int getServiceID() {
	return serviceID;
}


public String getServiceName() {
	return serviceName;
}

public String getModel() {
	return model;
}

public String getVehicleNum() {
	return petNum;
}


public String getDate() {
	return date;
}


public String getEmail() {
	return email;
}





}


