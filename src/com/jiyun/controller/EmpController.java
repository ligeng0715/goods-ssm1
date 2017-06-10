package com.jiyun.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiyun.pojo.po.Dept;
import com.jiyun.pojo.po.Emp;
import com.jiyun.service.DeptService;
import com.jiyun.service.EmpService;

@Controller
@RequestMapping("emp")
public class EmpController {
   /**
    * 查询所有
    */
	@Autowired
	private EmpService empService; 
	@Autowired
	private DeptService deptService; 
	@RequestMapping("find_all")
	@ResponseBody
	public List<Emp> findAll(){
		
		return empService.findAll();
	}
	/**
	 * 查询页面
	 * @return
	 */
	@RequestMapping("/list")
	public String listPage(){
		
		return "emp/list";
	}
	/**
	 * 删除
	 * @param empno
	 * @return
	 */
	@RequestMapping("delete")
	public String delete(@RequestParam("empno")Integer empno){
		empService.delete(empno);
		return "redirect:list";
	}
	/**
	 * 根据id查询
	 * @param empno
	 * @param model
	 * @return
	 */
	@RequestMapping("detail")
	public String selectById(@RequestParam("empno")Integer empno,Model model){
		Emp emp=empService.selectById(empno);
		model.addAttribute("emp", emp);
		return "emp/detail";
	}
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("delete_all")
	public String deleteAll(@RequestParam("ids")List<Integer> ids){
		empService.deleteAll(ids);
		return "redirect:list";
	}
	/**
	 * 修改页面
	 * @param empno
	 * @param model
	 * @return
	 */
	@RequestMapping("updatePage")
	public String updatePage(Integer empno,Model model){
		Emp emp=empService.findById(empno);
		model.addAttribute("emp", emp);
		List<Dept> deptList=deptService.findAll();
		model.addAttribute("deptList", deptList);
		
		return "emp/edit";
	}
	@RequestMapping("update")
	public String update(Emp emp){
		empService.update(emp);
		return "redirect:list";
	}
	/**
	 * 添加页面
	 * @param model
	 * @return
	 */
	@RequestMapping("addPage")
	public String addPage(Model model){
		List<Dept> deptList=deptService.findAll();
		model.addAttribute("deptList", deptList);
		return "emp/add";
	}
	/**
	 * 添加
	 * @param emp
	 * @return
	 */
	@RequestMapping("save")
	public String save(Emp emp){
		empService.save(emp);
		return "redirect:list";
	}
	
	
}
