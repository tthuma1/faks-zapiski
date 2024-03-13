//package predavanja;
//
public class Racunalo {
    public static void main(String[] args) {
        if (args.length != 2) {
            System.out.println("Uporaba: java Racunalo x y");
            System.exit(1); // non-zero stevilka pomeni napako
        }

        int x = 0;
        try {
            x = Integer.parseInt(args[0]);
        } catch (Exception e) {
            System.out.println("Prvi argument ni stevilo");
            System.exit(2);
        }

        int y = 0;
        try {
            y = Integer.parseInt(args[1]);
        } catch (Exception e) {
            System.out.println("Drugi argument ni stevilo");
            System.exit(3);
        }

        System.out.printf("%d + %d = %d\n", x, y, x + y);
    }
}
