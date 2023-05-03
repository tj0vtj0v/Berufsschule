/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaklassenmethoden;

/**
 *
 * @author BurdorfNoa
 */
public class NewClass {
    String name;
    int ausbJahr;


    public NewClass(String n, int j){
        name = n;
        ausbJahr = j;
    }

    public void setName(String n){
        name = n;
    }
    
    public boolean setJahr(int j){
        if (j <= 3 && j >= 1){
            ausbJahr = j;
            return true;
        }else{
            System.out.println("unerlaubtes Ausbildungsjahr");
            return false;
        }
    }
    
    public String getName(){
        return name;
    }
    
    public int getJahr(){
        return ausbJahr;
    }


}