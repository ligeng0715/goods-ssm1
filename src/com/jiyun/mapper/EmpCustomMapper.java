package com.jiyun.mapper;

import java.util.List;

import com.jiyun.pojo.po.Emp;

public interface EmpCustomMapper {

	List<Emp> findAll();

	Emp selectById(Integer empno);
    
}
