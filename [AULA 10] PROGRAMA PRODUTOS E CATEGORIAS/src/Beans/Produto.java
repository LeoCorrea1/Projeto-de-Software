package Beans;

public class Produto {

    private String nomeProduto;
    private String descricaoProduto;
    private Float precoProduto;
     String codigoProduto;
     int quantidadeDisponivel;
     String arqCSV;

    public Produto(String nomeProduto, String descricaoProduto, Float precoProduto, String codigoProduto, int quantidadeDisponivel) {
        this.nomeProduto = nomeProduto;
        this.descricaoProduto = descricaoProduto;
        this.precoProduto = precoProduto;
        this.codigoProduto = codigoProduto;
        this.quantidadeDisponivel = quantidadeDisponivel;
        arqCSV =nomeProduto+","+descricaoProduto+","+precoProduto+","+codigoProduto+","+quantidadeDisponivel;
    }


    public Produto() {
    }

    public String getArqCSV() {
        return arqCSV;
    }

    public void setArqCSV(String arqCSV) {
        this.arqCSV = arqCSV;
    }

    
    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public String getDescricaoProduto() {
        return descricaoProduto;
    }

    public void setDescricaoProduto(String descricaoProduto) {
        this.descricaoProduto = descricaoProduto;
    }

    public Float getPrecoProduto() {
        return precoProduto;
    }

    public void setPrecoProduto(Float precoProduto) {
        this.precoProduto = precoProduto;
    }

    public String getCodigoProduto() {
        return codigoProduto;
    }

    public void setCodigoProduto(String codigoProduto) {
        codigoProduto = codigoProduto;
    }

    public int getQuantidadeDisponivel() {
        return quantidadeDisponivel;
    }

    public void setQuantidadeDisponivel(int quantidadeDisponivel) {
        this.quantidadeDisponivel = quantidadeDisponivel;
    }

}
