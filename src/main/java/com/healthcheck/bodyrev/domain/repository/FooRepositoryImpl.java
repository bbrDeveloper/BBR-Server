package com.healthcheck.bodyrev.domain.repository;

import com.healthcheck.bodyrev.domain.entity.QFooEntity;
import com.mysema.query.jpa.impl.JPAQuery;
import org.springframework.data.jpa.repository.support.QueryDslRepositorySupport;
import org.springframework.stereotype.Repository;

/**
 * Created by wmjun on 2015. 12. 27..
 */
@Repository
public class FooRepositoryImpl extends QueryDslRepositorySupport implements FooCustomRepository {

    private QFooEntity qFooEntity = QFooEntity.fooEntity;

    public FooRepositoryImpl() {
        super(FooRepositoryImpl.class);
    }

    @Override
    public Long findTotalMoney() {
        JPAQuery query = new JPAQuery(getEntityManager());
        Long sum = query.from(qFooEntity).singleResult(qFooEntity.money.sum());

        return sum;

    }
}
