package com.jiyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiyun.mapper.DeptMapper;
import com.jiyun.pojo.po.Dept;
@Service
public class DeptServiceImpl implements DeptService{
   @Autowired
   private DeptMapper deptMapper;
	@Override
	public List<Dept> findAll() {
		
		return deptMapper.selectByExample(null);
	}

}
