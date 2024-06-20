package com.aremi.sas.repository;

import com.aremi.sas.model.DipendenteEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DipendenteRepository extends JpaRepository<DipendenteEntity, Long> {

    @Query("SELECT de FROM DipendenteEntity de JOIN DipendenteRuoloEntity dre ON de.id = dre.dipendente.id WHERE dre.sedeLavorativa.id = :idSede")
    List<DipendenteEntity> findDipendenteEntitiesByIdSede(@Param("idSede") Long idSede);
}
