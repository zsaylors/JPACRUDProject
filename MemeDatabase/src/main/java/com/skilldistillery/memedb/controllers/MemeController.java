package com.skilldistillery.memedb.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.memedb.data.MemeDAO;
import com.skilldistillery.memes.entities.Memes;

@Controller
public class MemeController {
	@Autowired
	public MemeDAO dao;
	
	@RequestMapping(path = "/")
	public String index(Model model) {
		List<Memes> memes = dao.findAll();
		model.addAttribute("memes", memes);
		return "index";
	}
	
//	@RequestMapping(path = "getMeme.do", params = "getMemeById", method = RequestMethod.POST) 
//	public ModelAndView getMeme(int getMemeById) {
//		ModelAndView mv = new ModelAndView();
//		Memes meme = dao.findById(getMemeById);
//		mv.addObject("meme", meme);
//		mv.setViewName("meme/show");
//		return mv;
//	}
	
	@RequestMapping(path = "getMeme.do", method = RequestMethod.GET) 
	public ModelAndView getMeme(int id) {
		ModelAndView mv = new ModelAndView();
		Memes meme = dao.findById(id);
		mv.addObject("meme", meme);
		mv.setViewName("meme/show");
		return mv;
	}
	
	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public ModelAndView createMeme(Memes meme) {
		Memes createMeme = dao.create(meme);
		ModelAndView mv = new ModelAndView();
		mv.addObject("meme", meme);
		mv.setViewName("meme/show");
		return mv;
	}
	
	@RequestMapping(path = "update.do", params = "updateById", method = RequestMethod.POST)
	public ModelAndView updateMeme(int updateById, Memes meme) {
		Memes foundMeme = dao.update(updateById, meme);
		ModelAndView mv = new ModelAndView();
		mv.addObject("meme", foundMeme);
		mv.setViewName("meme/show");
		return mv;
	}
	
	@RequestMapping(path = "delete.do", params = "deleteById", method = RequestMethod.POST)
	public ModelAndView deleteMeme(int deleteById, Memes meme) {
		boolean foundMeme = dao.delete(deleteById);
		ModelAndView mv = new ModelAndView();
		List<Memes> updateMemes = dao.findAll();
		mv.addObject("memes", updateMemes);
		mv.setViewName("index");
		return mv;
	}
}
