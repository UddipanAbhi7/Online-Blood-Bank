package com.Project.BloodDonate.DAO;


import org.springframework.data.repository.CrudRepository;

import com.Project.BloodDonate.Model.User;

public interface UserRepo extends CrudRepository<User, Integer>
{

}
