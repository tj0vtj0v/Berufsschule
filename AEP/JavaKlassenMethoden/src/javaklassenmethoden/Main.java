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
public class Main {
    
    /**
     * @param args the command line arguments
     */

    public static void main(String[] args) {
        // TODO code application logic here
        NewClass Jesus = new NewClass("Jesus", 2);
        NewClass Otto = new NewClass("Otto", 1);
        System.out.println(Jesus.getName());
        System.out.println(Jesus.getName());
        Otto.setJahr(6);
        System.out.println(Otto.getName());
        System.out.println(Otto.getName());
    }
    
}
