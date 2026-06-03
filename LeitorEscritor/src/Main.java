import java.util.Random;

public class Main {
    public static void main(String[] args) {
        final BaseDados monitor = new BaseDados();
        GeradorString gerador = new GeradorString();
        Random geradorTexto = new Random();

        Thread threadLeitor1 = new Thread(new Runnable() {
            public void run() {
                while (true) {
                    int Sorteado = geradorTexto.nextInt(gerador.NovosNomes.length);
                    String Nome = gerador.NovosNomes[Sorteado];
                    monitor.realizarLeitura(Nome);
                    try {
                        Thread.sleep(3000); // Região não crítica (tempo antes de ler de novo)
                    } catch (InterruptedException e) {}
                }
            }
        });
        Thread threadLeitor2 = new Thread(new Runnable() {
            public void run() {
                while (true) {
                    int Sorteado = geradorTexto.nextInt(gerador.NovosNomes.length);
                    String Nome = gerador.NovosNomes[Sorteado];
                    monitor.realizarLeitura(Nome);
                    try {
                        Thread.sleep(3000); // Região não crítica (tempo antes de ler de novo)
                    } catch (InterruptedException e) {}
                }
            }
        });
        Thread threadEscritor = new Thread(new Runnable() {
            public void run() {

                while (true) {
                    try {
                        Thread.sleep(5000); // Região não crítica
                    } catch (InterruptedException e) {}

                    int Sorteado = geradorTexto.nextInt(gerador.NovasEscritas.length);
                    String EscritaAleatoria = gerador.NovasEscritas[Sorteado];

                    monitor.realizarEscrita("O Escritor Leonardo", EscritaAleatoria);
                }
            }
        });

        threadLeitor1.start();
        threadEscritor.start();
        threadLeitor2.start();
    }
}