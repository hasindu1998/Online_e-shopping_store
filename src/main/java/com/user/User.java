package com.user;

public class User {
    private int id;
    private String username;
    private String password;
    private String Fname;
    private String Lname;
    private String email;
    private String phone;
    private String dob;
    private String usertype;
    private String address;
    private String city;
    private String province;
    private String country;
    private String postalcode;
    private String propicUrl;
    
	public User(int id, String username, String password, String fname, String lname, String email, String phone,
			String dob, String usertype, String address, String city, String province, String country,
			String postalcode, String propicUrl) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.Fname = fname;
		this.Lname = lname;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.usertype = usertype;
		this.address = address;
		this.city = city;
		this.province = province;
		this.country = country;
		this.postalcode = postalcode;
		this.propicUrl = propicUrl;
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getFname() {
		return Fname;
	}

	public String getLname() {
		return Lname;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getDob() {
		return dob;
	}

	public String getUsertype() {
		return usertype;
	}

	public String getAddress() {
		return address;
	}

	public String getCity() {
		return city;
	}

	public String getProvince() {
		return province;
	}

	public String getCountry() {
		return country;
	}

	public String getPostalcode() {
		return postalcode;
	}

	public String getPropicUrl() {
		return propicUrl;
	}
    
}
