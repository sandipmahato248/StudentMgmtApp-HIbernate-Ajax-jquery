package com.sandip.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sandip.dao.StudentDao;
import com.sandip.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private SessionFactory sessionFactory;

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	private Session getSession() {

		Session sess = getSessionFactory().getCurrentSession();
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return sess;
	}
	public Student saveStudent(Student student) {
		return (Student) getSession().merge(student);
		
	}

	public List<Student> studentList() {
		return getSession().createCriteria(Student.class).list();
	}

	public Student deleteStudent(int id) {
	Student student=getStudent(id);
	if(null!= student){
		getSession().delete(student);
	}
	return null;
	}

	public Student getStudent(int id) {
		return (Student) getSession().get(Student.class,id);
	}


	
}
