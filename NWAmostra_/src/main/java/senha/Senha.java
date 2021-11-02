package senha;

import java.math.BigInteger;
import java.security.*;

public class Senha {

    public static String passMD5(String password) throws 
        NoSuchAlgorithmException{

        String hashMD5="";

        String plainText = password;
        MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
        mdAlgorithm.update(plainText.getBytes());

 

        byte[] digest = mdAlgorithm.digest();
        StringBuilder hexString = new StringBuilder();

 

        for (int i = 0; i < digest.length; i++) {
            plainText = Integer.toHexString(0xFF & digest[i]);

            if (plainText.length() < 2) {
                plainText = "0" + plainText;
            }
 
            hexString.append(plainText);
        }
        hashMD5 = hexString.toString();

        return hashMD5;
    }

    public static String passSHA512(String passwordToHash) throws NoSuchAlgorithmException{

            MessageDigest md = MessageDigest.getInstance("SHA-512"); 

            byte[] messageDigest = md.digest(passwordToHash.getBytes()); 
 
            BigInteger no = new BigInteger(1, messageDigest); 

            String hashSHA512 = no.toString(16); 

            while (hashSHA512.length() < 32) { 
                hashSHA512 = "0" + hashSHA512; 
            } 

            return hashSHA512;
    }
}
