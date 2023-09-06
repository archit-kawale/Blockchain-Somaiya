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

    public String getHash(){
        return hash;
    }
    
    public String getTransaction(){
        return transaction;
    }

    public String getPreviousHash(){
        return previousHash;
    }

    public long getTimeStamp(){
        return timeStamp;
    }

    public void setHash(String h){
        hash = h;
    }

    public void setTransaction(String trans){
        transaction = trans;
    }

    public void setPreviousHash(String ph){
        previousHash = ph;
    }

    public void setTimeStamp(long tp){
        timeStamp = tp;
    }

    public int incrementNonce(){
        return nonce++;
    }

    @Override
    public String toString(){
        return this.hash+"-"+this.previousHash+"-"+this.id+"-"+this.timeStamp;
    }

}
