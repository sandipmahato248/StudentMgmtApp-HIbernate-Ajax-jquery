package com.sandip.dao;

import java.util.List;

import com.sandip.model.Student;

public interface StudentDao {
	public Student saveStudent(Student student);
	public List<Student> studentList();
	public Student deleteStudent(int id);
	public Student getStudent(int id);

}
