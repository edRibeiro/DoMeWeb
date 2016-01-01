/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Livro;

/**
 *
 * @author ederson
 */
public class Livro {
    private String  titulo;
    private String serie;
    private String autor;
    private String editora;

    public Livro(String titulo, String serie, String autor, String editora) {
        this.titulo = titulo;
        this.serie = serie;
        this.autor = autor;
        this.editora = editora;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    @Override
    public String toString() {
        return "Livro{" + "titulo=" + titulo + ", serie=" + serie + ", autor=" + autor + ", editora=" + editora + "}\n";
    }
    
}
