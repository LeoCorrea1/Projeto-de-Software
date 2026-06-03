public class BaseDados {
    private int leitores = 0;
    private boolean db_ocupado = false;
    private String conteudo = "Texto Inicial";

    public void realizarLeitura(String nome) {
        synchronized (this) {
            try {
                while (db_ocupado) {
                    this.wait();
                }
                leitores = leitores + 1;
                System.out.println("\n[LEITOR ENTROU] " + nome + " entrou. Total de leitores: " + leitores);
            } catch (InterruptedException e) {
                System.out.println("Leitura interrompida.");
            }
        }
        try {
            System.out.println("\n *LENDO* : " + nome + " está lendo: '" + conteudo + "'");
            Thread.sleep(2000);
        } catch (InterruptedException e) {}

        synchronized (this) {
            leitores = leitores - 1;
            System.out.println("\n[LEITOR SAIU] " + nome + " saiu. Total de leitores: " + leitores );

            if (leitores == 0) {
                this.notifyAll();
            }
        }
    }
    public synchronized void realizarEscrita(String nome, String novoTexto) {
        try {
            while (db_ocupado || leitores > 0) {
                wait();
            }
            db_ocupado = true;
            System.out.println("\n[ESCRITOR ENTROU] " + nome + " obteve acesso exclusivo.");

            System.out.println(" *ESCREVENDO* : " + nome + " está ESCREVENDO...");
            Thread.sleep(2500);
            System.out.println(" *ESCREVEU* : " + nome + " Escreveu '" + novoTexto + "'");
            this.conteudo = novoTexto;
            Thread.sleep(2000);

            db_ocupado = false;
            System.out.println("[ESCRITOR SAIU] " + nome + " liberou a base de dados. \n");
            notifyAll();

        } catch (InterruptedException e) {
            System.out.println("Escrita interrompida.");
        }
    }
}