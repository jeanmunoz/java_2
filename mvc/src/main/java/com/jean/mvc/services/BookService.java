package com.jean.mvc.services;

import java.util.List;
import java.util.Optional;

//import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.jean.mvc.models.Book;
import com.jean.mvc.repositories.BookRepository;
@Service
public class BookService {
    //Agregando el book al repositorio como una dependencia
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    //Devolviendo todos los libros.
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    //Creando un libro.
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    //Obteniendo la información de un libro
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    
    public Book updateBook(Long id, String title, String description, String language, Integer numOfPages) {
    	Optional <Book> update = bookRepository.findById(id);
    	if(update != null && update.isPresent()) {
    		update.get().setTitle(title);
    		update.get().setDescription(description);
    		update.get().setLanguage(language);
    		update.get().setNumberOfPages(numOfPages);
    		bookRepository.save(update.get());
    		return update.get();
    	}
    	return null;        
    }
    
    // borra un libro
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }
	
}
