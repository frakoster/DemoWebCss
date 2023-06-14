import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
/**
 *
 * @author armijof
 */
public class AnalsisLogsDsp {

    public static void main(String[] args) throws IOException {
        String fileName = "server.log.2023-05-08";
        readLogFile(fileName);

    }

    static void readLogFile(String fileName) throws IOException {

        BufferedReader bf = null;
        try {
            Path path = Paths.get("C:\\logsSources\\" + fileName);
            bf = new BufferedReader(new FileReader("C:\\logsSources\\" + fileName ) );
            String linea=null;  
            String[] arrOfStr = null;
            ArrayList<String[]>lineas=new ArrayList<>(); 
            
            while ( (linea = bf.readLine() ) != null){
                //linea=bf.readLine();
                arrOfStr = linea.split("\\s", 6);
                //System.out.println(linea);
                lineas.add(arrOfStr);
            
            }
                System.out.println("arrOfStr.length()=" + lineas.size() );    
                for (int i=1; i<lineas.size();i++){
                    String[]a = lineas.get(i);
                    System.out.println("a[].length=" + a.length);
            }       
            
         
        } catch (FileNotFoundException ex) {
            
        } finally {
            try {
                bf.close();
            } catch (IOException ex) {
            
            }
        }
        

    }

}
