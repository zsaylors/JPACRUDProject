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
	private MemeDAOImpl dao;
	
	@Test
	@DisplayName("Testing getting meme by id")
	public void test1() {
		assertEquals("cat", dao.findById(1).getAnimalType());
	}
}
