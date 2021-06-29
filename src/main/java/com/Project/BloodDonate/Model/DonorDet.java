package com.Project.BloodDonate.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class DonorDet 
{
	@Id
	@GeneratedValue
	private int donorId;
	private String donorName;
	private int donorAge;
	private String donorSex;
	private String donorAddress;
	private String donorGroup;
	private String donorDate;
	
	
	public String getDonorDate() {
		return donorDate;
	}


	public void setDonorDate(String donorDate) {
		this.donorDate = donorDate;
	}


	public int getDonorId() {
		return donorId;
	}
	
	
	public String getDonorGroup() {
		return donorGroup;
	}
	public void setDonorGroup(String donorGroup) {
		this.donorGroup = donorGroup;
	}
	public String getDonorName() {
		return donorName;
	}
	public void setDonorName(String donorName) {
		this.donorName = donorName;
	}
	public int getDonorAge() {
		return donorAge;
	}
	public void setDonorAge(int donorAge) {
		this.donorAge = donorAge;
	}
	public String getDonorSex() {
		return donorSex;
	}
	public void setDonorSex(String donorSex) {
		this.donorSex = donorSex;
	}
	

	@Override
	public String toString() {
		return "DonorDet [donorId=" + donorId + ", donorName=" + donorName + ", donorAge=" + donorAge + ", donorSex="
				+ donorSex + ", donorAddress=" + donorAddress + ", donorGroup=" + donorGroup + ", donorDate="
				+ donorDate + "]";
	}


	public String getDonorAddress() {
		return donorAddress;
	}
	public void setDonorAddress(String donorAddress) {
		this.donorAddress = donorAddress;
	}
	

}
