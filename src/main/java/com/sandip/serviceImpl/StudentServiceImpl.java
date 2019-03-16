package com.sandip.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sandip.dao.StudentDao;
import com.sandip.model.Student;
import com.sandip.service.StudentService;



@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentDao studentDao;

	@Transactional
	public Student saveStudent(Student student) {
		return studentDao.saveStudent(student);
	}

	@Transactional(readOnly = true)
	public List<Student> studentList() {
		return studentDao.studentList();
	}

	@Transactional(readOnly = true)
	public Student getStudent(int id) {
		return studentDao.getStudent(id);
	}
	
	@Transactional
	public Student deleteStudent(int id) {
		return studentDao.deleteStudent(id);
	}

}
