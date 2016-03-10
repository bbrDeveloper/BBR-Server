package com.healthcheck.bodyrev.domain.entity;

import static com.mysema.query.types.PathMetadataFactory.*;

import com.mysema.query.types.path.*;

import com.mysema.query.types.PathMetadata;
import javax.annotation.Generated;
import com.mysema.query.types.Path;


/**
 * QFooEntity is a Querydsl query type for FooEntity
 */
@Generated("com.mysema.query.codegen.EntitySerializer")
public class QFooEntity extends EntityPathBase<FooEntity> {

    private static final long serialVersionUID = -1956778516L;

    public static final QFooEntity fooEntity = new QFooEntity("fooEntity");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> money = createNumber("money", Long.class);

    public final StringPath name = createString("name");

    public QFooEntity(String variable) {
        super(FooEntity.class, forVariable(variable));
    }

    public QFooEntity(Path<? extends FooEntity> path) {
        super(path.getType(), path.getMetadata());
    }

    public QFooEntity(PathMetadata<?> metadata) {
        super(FooEntity.class, metadata);
    }

}

