package com.skilldistillery.memedb.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.memes.entities.Memes;

@Transactional
@Service
public class MemeDAOImpl implements MemeDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Memes findById(int id) {
		return em.find(Memes.class, id);
	}

	@Override
	public List<Memes> findAll() {
		String memes = "SELECT meme from Memes meme ORDER BY meme.id DESC";
		return em.createQuery(memes, Memes.class).getResultList();
	}

	@Override
	public Memes create(Memes meme) {
		em.persist(meme);
		em.flush();
		return meme;
	}

	@Override
	public Memes update(int id, Memes meme) {
		Memes foundMeme = em.find(Memes.class, id);
	//	em.getTransaction().begin();
		foundMeme.setTopQuote(meme.getTopQuote());
		foundMeme.setBottomQuote(meme.getBottomQuote());
		foundMeme.setImgUrl(meme.getImgUrl());
		foundMeme.setAnimalType(meme.getAnimalType());
		foundMeme.setFontColor(meme.getFontColor());
		em.flush();
//		em.getTransaction().commit();
		return foundMeme;
	}

	@Override
	public boolean delete(int id) {
		Memes foundMeme = em.find(Memes.class, id);
	//	em.getTransaction().begin();
		em.remove(foundMeme);
		em.flush();
	//	em.getTransaction().commit();
		return (foundMeme == null);
	}
}
