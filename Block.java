import java.util.*;

public class Block {
    private String transaction;
    private String hash;
    private String previousHash;
    private long timeStamp;
    private int id;
    private int nonce;

    public Block(String transaction, int id, String previousHash){
        this.transaction=transaction;
        this.id = id;
        this.previousHash = previousHash;
        this.timeStamp = new Date().getTime();
        String d = Integer.toString(id)+String.valueOf(timeStamp)+transaction+previousHash+String.valueOf(nonce);

        this.hash = Hash.generateHash(d);
    }
}
