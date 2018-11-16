/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dic;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author votun
 */
public class IOF {

    public static String oF() throws FileNotFoundException, IOException {
        BufferedReader out = new BufferedReader(new FileReader("C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\code.txt"));
        String str;
        while ((str = out.readLine()) != null) {
            return str;
        }

        return null;
        
    }
    public static void iF(String code) throws IOException{
        try (BufferedWriter in = new BufferedWriter(new FileWriter("C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\code.txt"))) {
            in.write(code);
        }
    }

   

    
}
