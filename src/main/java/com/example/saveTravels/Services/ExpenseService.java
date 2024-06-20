package com.example.saveTravels.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.saveTravels.Models.Expense;
import com.example.saveTravels.Reposotries.ExpenseRepository;

@Service
public class ExpenseService {
	@Autowired
	ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository= expenseRepository;
	}
	// display all expenses
	public List<Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	// create an expense
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	// return one expense by id
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		}
		else {
			return null;
		}
	}
	//update an Expense
	public Expense updateExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	//delete an Expense
	
	public void deleteExpense(Expense expense) {
		expenseRepository.delete(expense);
	}
	
	
	

}
