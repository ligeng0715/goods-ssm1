package com.jiyun.service;

import java.util.List;

import com.jiyun.pojo.po.Emp;

public interface EmpService {

	List<Emp> findAll();

	void delete(Integer empno);

	Emp selectById(Integer empno);

	void deleteAll(List<Integer> ids);

	Emp findById(Integer empno);

	void update(Emp emp);

	void save(Emp emp);
    
}
