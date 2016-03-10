package com.healthcheck.bodyrev.domain.service;

import com.healthcheck.bodyrev.domain.entity.FooEntity;
import com.healthcheck.bodyrev.domain.repository.FooRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by wmjun on 2015. 12. 27..
 */
@Service
public class FooServiceImpl implements FooService {

    @Autowired
    FooRepository fooRepository;


    @Override
    public Long getTotalMoney() {
        return fooRepository.findTotalMoney();
    }

    @Override
    public FooEntity getFooEntity(Long id) {
        return fooRepository.findOne(id);
    }
}
