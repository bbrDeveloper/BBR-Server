package com.healthcheck.bodyrev.api;

import com.healthcheck.bodyrev.domain.entity.FooEntity;
import com.healthcheck.bodyrev.domain.service.FooService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created by wmjun on 2015. 12. 27..
 */
@RestController
@RequestMapping("api/")
public class FooRestApiController {

    @Autowired
    private FooService fooService;

    @RequestMapping(value = "member/{id}", method = RequestMethod.GET)
    @ResponseBody
    public FooEntity getMembers(@PathVariable Long id){
        return fooService.getFooEntity(id);
    }

}
