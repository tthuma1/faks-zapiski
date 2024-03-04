import java.lang.Math;

public class Obresti {
  public static void main(String[] args) {
    System.out.println("Zivjo svet");
    
    double glavnica     = 1000.5;
    int    steviloLet   = 11;
    double obrestnaMera = 3.5;
    
    double koncniZnesek = glavnica * Math.pow(1 + obrestnaMera / 100, steviloLet);
    System.out.printf("%f\n", koncniZnesek);
    System.out.println("Koncni znesek: " + koncniZnesek);
  }
}