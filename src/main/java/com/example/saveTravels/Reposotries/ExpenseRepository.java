package com.example.saveTravels.Reposotries;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.saveTravels.Models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
 List<Expense> findAll();
}
