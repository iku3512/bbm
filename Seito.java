package model;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;

import servlet.UpdateAge;



public class Seito {

	private String sname;
	private String skana;
	private int seX;
	private String hname;
	private String hkana;
	private String home;
	private String school;
	private int agE;
	private int typE;
	private String stel;
	private String htel;
	private String tel;
	private String smail;
	private String hmail;
	private String naiyo;
	private int seitoID;
	private String status;
	private String gessya;
	private String sex;
	private String age;
	private String type;
	
	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getSeitoID() {
		return seitoID;
	}

	public void setSeitoID(int seitoID) {
		this.seitoID = seitoID;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getGessya() {
		return gessya;
	}

	public void setGessya(String gessya) {
		this.gessya = gessya;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSkana() {
		return skana;
	}

	public void setSkana(String skana) {
		this.skana = skana;
	}
	
	public void setSex(int seX) {
		this.seX = seX;
	}

	public int getSex() {
		return seX;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHkana() {
		return hkana;
	}

	public void setHkana(String hkana) {
		this.hkana = hkana;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public int getAge() {
		return agE;
	}

	public void setAge(int agE) {
		this.agE = agE;
	}

	public int getType() {
		return typE;
	}

	public void setType(int typE) {
		this.typE = typE;
	}

	public String getStel() {
		return stel;
	}

	public void setStel(String stel) {
		this.stel = stel;
	}

	public String getHtel() {
		return htel;
	}

	public void setHtel(String htel) {
		this.htel = htel;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSmail() {
		return smail;
	}

	public void setSmail(String smail) {
		this.smail = smail;
	}

	public String getHmail() {
		return hmail;
	}

	public void setHmail(String hmail) {
		this.hmail = hmail;
	}

	public String getNaiyo() {
		return naiyo;
	}

	public void setNaiyo(String naiyo) {
		this.naiyo = naiyo;
	}
	

	public Seito() {
		// TODO 自動生成されたコンストラクター・スタブ
	}
	
}
