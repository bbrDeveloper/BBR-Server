package com.healthcheck.bodyrev.domain.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * Created by wmjun on 2015. 12. 27..
 */
@Data
@Entity
@Table(name = "foo")
public class FooEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "money")
    private Long money;
}
