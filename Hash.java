import java.security.MessageDigest;

public class Hash{
    public static String generateHash(String data){
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(data.getBytes("UTF-8"));
            StringBuffer hex= new StringBuffer();

            for (int i=0; i<hash.length; i++){
                String h = Integer.toHexString(0xff & hash[i]);
                if (h.length()==1){
                    hex.append('0');
                }
                hex.append(h);
            }
            return hex.toString();
        } catch (Exception e) {
            System.out.println(e);
            return e.toString();       
        }
    }
}