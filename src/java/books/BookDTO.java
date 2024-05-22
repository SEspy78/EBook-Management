/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package books;

/**
 *
 * @author Macbook Pro
 */
public class BookDTO {

    private int id;
    private String title;
    private String author;
    private String Category;
    private int page;
    private String img ;
    private String description;
    private String link_book;
    private int user_id;

    public BookDTO() {
    }

    public BookDTO( String title, String author, String Category, int page, String img, String description, String link_book, int user_id) {
        this.title = title;
        this.author = author;
        this.Category = Category;
        this.page = page;
        this.img = img;
        this.description = description;
        this.link_book = link_book;
        this.user_id = user_id;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink_book() {
        return link_book;
    }

    public void setLink_book(String link_book) {
        this.link_book = link_book;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    
    
}
