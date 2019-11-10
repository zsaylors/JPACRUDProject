package com.skilldistillery.memes.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Memes {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "top_quote")
	private String topQuote;
	
	@Column(name = "bottom_quote")
	private String bottomQuote;
	
	@Column(name = "img_url")
	private String imgUrl;
	
	@Column(name = "font_color")
	private String fontColor;
	
	@Column(name = "generated_img")
	private String GeneratedImageUrl;
	
	@Column(name = "animal")
	private String animalType;
	
	public Memes() {}
	
	public Memes(String topQuote, String bottomQuote, String imgUrl, String fontColor, String animalType) {
		super();
		this.topQuote = topQuote;
		this.bottomQuote = bottomQuote;
		this.imgUrl = imgUrl;
		this.fontColor = fontColor;
		this.animalType = animalType;
	}

	@Override
	public String toString() {
		return "Meme [id=" + id + ", topQuote=" + topQuote + ", bottomQuote=" + bottomQuote + ", imgUrl=" + imgUrl
				+ ", fontColor=" + fontColor + ", GeneratedImageUrl=" + GeneratedImageUrl + ", animalType=" + animalType
				+ "]";
	}

	public int getId() {
		return id;
	}

	public String getTopQuote() {
		return topQuote;
	}

	public void setTopQuote(String topQuote) {
		this.topQuote = topQuote;
	}

	public String getBottomQuote() {
		return bottomQuote;
	}

	public void setBottomQuote(String bottomQuote) {
		this.bottomQuote = bottomQuote;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getFontColor() {
		return fontColor;
	}

	public void setFontColor(String fontColor) {
		this.fontColor = fontColor;
	}

	public String getGeneratedImageUrl() {
		return GeneratedImageUrl;
	}

	public void setGeneratedImageUrl(String generatedImageUrl) {
		GeneratedImageUrl = generatedImageUrl;
	}

	public String getAnimalType() {
		return animalType;
	}

	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((GeneratedImageUrl == null) ? 0 : GeneratedImageUrl.hashCode());
		result = prime * result + ((animalType == null) ? 0 : animalType.hashCode());
		result = prime * result + ((bottomQuote == null) ? 0 : bottomQuote.hashCode());
		result = prime * result + ((fontColor == null) ? 0 : fontColor.hashCode());
		result = prime * result + id;
		result = prime * result + ((imgUrl == null) ? 0 : imgUrl.hashCode());
		result = prime * result + ((topQuote == null) ? 0 : topQuote.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Memes other = (Memes) obj;
		if (GeneratedImageUrl == null) {
			if (other.GeneratedImageUrl != null)
				return false;
		} else if (!GeneratedImageUrl.equals(other.GeneratedImageUrl))
			return false;
		if (animalType == null) {
			if (other.animalType != null)
				return false;
		} else if (!animalType.equals(other.animalType))
			return false;
		if (bottomQuote == null) {
			if (other.bottomQuote != null)
				return false;
		} else if (!bottomQuote.equals(other.bottomQuote))
			return false;
		if (fontColor == null) {
			if (other.fontColor != null)
				return false;
		} else if (!fontColor.equals(other.fontColor))
			return false;
		if (id != other.id)
			return false;
		if (imgUrl == null) {
			if (other.imgUrl != null)
				return false;
		} else if (!imgUrl.equals(other.imgUrl))
			return false;
		if (topQuote == null) {
			if (other.topQuote != null)
				return false;
		} else if (!topQuote.equals(other.topQuote))
			return false;
		return true;
	}
}