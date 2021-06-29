package com.Project.BloodDonate.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.Project.BloodDonate.Model.DonorDet;

public interface DonorRepo extends CrudRepository<DonorDet, Integer>
{
	List<DonorDet> findByDonorGroup(String donorGroup);
}
