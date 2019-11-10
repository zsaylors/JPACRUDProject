package com.skilldistillery.dog.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.memes.entities.Memes;

class MemeTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Memes meme;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("MemesPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		meme = em.find(Memes.class, 2);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}
	
	@Test
	@DisplayName("Checks if the top quote matches db item")
	void test1() {
		assertEquals("cats", meme.getTopQuote());
	}
	
	@Test
	@DisplayName("Checks if the bottom quote matches db item")
	void test2() {
		assertEquals("pushing", meme.getBottomQuote());
	}
	
	@Test
	@DisplayName("Checks if img url is valid")
	void test3() {
		assertEquals("https://i.ytimg.com/vi/ccK3usCWmTo/maxresdefault.jpg", meme.getImgUrl());
	}
	
	@Test
	@DisplayName("Checks if the font hex matches db item")
	void test4() {
		assertEquals("#ffffff", meme.getFontColor());
	}

	@Test
	@DisplayName("Checks if generated_img is null or not and matches db")
	void test5() {
		assertEquals(null, meme.getGeneratedImageUrl());
	}
	
	@Test
	@DisplayName("Checks if animal type is valid")
	void test6() {
		assertEquals("cat", meme.getAnimalType().toLowerCase());
	}
}
