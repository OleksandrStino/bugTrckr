package com.softserverinc.edu.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 37.0 on 05.08.2016.
 */
@Controller
@RequestMapping(value = "/issue")
public class IssueController {

    public String Index() {
        return "issue";
    }

}