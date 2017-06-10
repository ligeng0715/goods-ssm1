package com.jiyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiyun.mapper.EmpCustomMapper;
import com.jiyun.mapper.EmpMapper;
import com.jiyun.pojo.po.Emp;
@Service
public class EmpServiceImpl implements EmpService{
    @Autowired
	private EmpMapper empMapper;
    @Autowired
    private EmpCustomMapper empCustomMapper;
	@Override
	public List<Emp> findAll() {
		
		return empCustomMapper.findAll();
	}
	@Override
	public void delete(Integer empno) {
		empMapper.deleteByPrimaryKey(empno);
		
	}
	@Override
	public Emp selectById(Integer empno) {
		
		return empCustomMapper.selectById(empno);
	}
	@Override
	public void deleteAll(List<Integer> ids) {
		for (Integer empno : ids) {
			empMapper.deleteByPrimaryKey(empno);
		}
		
	}
	@Override
	public Emp findById(Integer empno) {
		
		return empMapper.selectByPrimaryKey(empno);
	}
	@Override
	public void update(Emp emp) {
		empMapper.updateByPrimaryKeySelective(emp);
		
	}
	@Override
	public void save(Emp emp) {
		empMapper.insertSelective(emp);
		
	}

}
