package com.Project.BloodDonate.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.Project.BloodDonate.Model.Admin;

public interface AdminRepo extends CrudRepository<Admin, Integer>{
		void deleteByAdminUsername(String username);
}
