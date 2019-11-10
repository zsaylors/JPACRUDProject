package com.skilldistillery.memedb.data;

import java.util.List;
import com.skilldistillery.memes.entities.Memes;

public interface MemeDAO {
	Memes findById(int id);
	List<Memes> findByKeyword(String keyword);
	List<Memes> findAll();
	public Memes create(Memes meme);
	public Memes update(int id, Memes meme);
	boolean delete(int id);
}
