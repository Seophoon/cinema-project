package dao;

import java.util.List;

import model.Jari;

public interface JariDao {
	List<Jari> getJariList(String moviename);
	public void insertJari(Jari jari);
	List<Jari> myYeyak(String id);
}
