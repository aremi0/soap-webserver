package com.aremi.sas.repository;

import com.aremi.sas.model.SedeLavorativaEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SedeLavorativaRepository extends JpaRepository<SedeLavorativaEntity, Long>  {

}
