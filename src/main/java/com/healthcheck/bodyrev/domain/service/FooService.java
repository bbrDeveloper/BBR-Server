package com.healthcheck.bodyrev.domain.service;

import com.healthcheck.bodyrev.domain.entity.FooEntity;

/**
 * Created by wmjun on 2015. 12. 27..
 */
public interface FooService {

    Long getTotalMoney();

    FooEntity getFooEntity(Long id);
}
