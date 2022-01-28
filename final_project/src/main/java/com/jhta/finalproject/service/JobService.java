package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.jobvo.JobVo;

import data.mybatis.mapper.JobMapper;

@Service
public class JobService {
	@Autowired private JobMapper mapper;
	
	public int insert(JobVo vo) {
		return mapper.insert(vo);
	}
	public int delete(int j_num) {
		return mapper.delete(j_num);
	}
	public int update(JobVo vo) {
		return mapper.update(vo);
	}
	public List<JobVo> list(HashMap<String, Object> map){
		return mapper.list(map);
	}
	public JobVo selectOne(int j_num) {
		return mapper.selectOne(j_num);
	}
	public int getCount(HashMap<String, Object> map) {
		return mapper.getCount(map);
	}
	public int addHit(int j_num) {
		return mapper.addHit(j_num);
	}
	
}
