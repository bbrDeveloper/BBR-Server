package com.healthcheck.bodyrev.domain.repository;

import com.healthcheck.bodyrev.domain.entity.FooEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by wmjun on 2015. 12. 27..
 */
public interface FooRepository extends JpaRepository<FooEntity, Long>, FooCustomRepository {

    FooEntity findOne(Long id);
}
