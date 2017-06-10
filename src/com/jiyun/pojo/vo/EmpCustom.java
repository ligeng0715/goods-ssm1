package com.jiyun.pojo.vo;

import com.jiyun.pojo.po.Emp;

public class EmpCustom extends Emp{

    private String dname;

    private String loc;

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
}
