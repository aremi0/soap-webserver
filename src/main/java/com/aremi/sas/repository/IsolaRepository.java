package com.aremi.sas.repository;

import com.aremi.sas.model.IsolaEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IsolaRepository extends JpaRepository<IsolaEntity, Long> {

}
