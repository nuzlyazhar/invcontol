/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entity.Category;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author nuzly
 */
@Stateless
public class CategoryManagementBean {

    @PersistenceContext
    EntityManager em;

    public Category createCategory(Category cat) {

        Category createdCategory = em.merge(cat);
        em.flush();
        return createdCategory;
    }

    public List<Category> findAll() {
        List<Category> categories = em.createNamedQuery("Category.findAll", Category.class).getResultList();
        return categories;

    }
    
    public Category findCategoryById(Integer id){
     Category category= em.createNamedQuery("Category.findById", Category.class).setParameter("id", id).getSingleResult();
     return category;
    }
    
     public Category findCategoryByName(Integer catName){
     Category category= em.createNamedQuery("Category.findByCatName", Category.class).setParameter("catName", catName).getSingleResult();
     return category;
    }
}
