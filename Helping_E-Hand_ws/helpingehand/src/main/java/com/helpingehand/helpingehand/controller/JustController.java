package com.helpingehand.helpingehand.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.helpingehand.helpingehand.handeler.ResponseHandler;
import com.helpingehand.helpingehand.models.SaliClass;


@RestController
public class JustController {
	
	@PostMapping("/login")
	 public ResponseEntity<Object> getphone(String Mobile) {
		List<SaliClass> list = new ArrayList<SaliClass> (); 
		SaliClass chotaSaliClass=new SaliClass();
		SaliClass chotaSaliClass1=new SaliClass();
		chotaSaliClass.firstName= "Bishal";
		chotaSaliClass.lastName= "Prasad";
		chotaSaliClass1.firstName= "Suraj";
		chotaSaliClass1.lastName= "Sharma";
		list.add(chotaSaliClass);
		list.add(chotaSaliClass1);
        return ResponseHandler.generateResponse("Login successfull", HttpStatus.OK, list);
    }
	
	
}

