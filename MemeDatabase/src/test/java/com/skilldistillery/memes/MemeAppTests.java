package com.skilldistillery.memes;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.memedb.data.MemeDAOImpl;

@SpringBootTest
class MemeAppTests {
//	private static EntityManagerFactory emf;
//	private EntityManager em;
	private MemeDAOImpl dao;
	

//	@BeforeAll
//	static void setUpBeforeClass() throws Exception {
//		emf = Persistence.createEntityManagerFactory("MemesPU");
//	}
//
//	@AfterAll
//	static void tearDownAfterClass() throws Exception {
//		emf.close();
//	}
//
//	@BeforeEach
//	void setUp() throws Exception {
//		em = emf.createEntityManager();
//		dao = em.find(MemeDAOImpl.class, 1);
//	}
//
//	@AfterEach
//	void tearDown() throws Exception {
//		em.close();
//	}
	
	@Test
	@DisplayName("Testing getting meme by id")
	public void test1() {
		assertEquals("sloth", dao.findById(1).getAnimalType());
	}
	
	@Test
	@DisplayName("Testing getting a meme list")
	public void test2() {
		assertEquals("sloth", dao.findAll().get(0).getAnimalType());
	}

}
