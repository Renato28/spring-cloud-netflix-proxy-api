package com.rodrigofujioka;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.common.collect.ImmutableMap;

@RestController
@RequestMapping("/argentina")
public class ArgentinaServiceController {

	private static final Map<Long, String> CUSTOMERS = ImmutableMap.of(
			1L, "Customer 1", 
			2L, "Customer 2",
			3L, "Customer 3",
			4L, "Customer 4");
	
	@GetMapping
	public List<String> findAll(){
		System.out.println("Passando pela API Argentina");
		return new ArrayList<>(CUSTOMERS.values());
	}
	
	@GetMapping(path = "/{id}")
	public String findById(@PathVariable("id") Long id) {
		return CUSTOMERS.get(id);
	}
}
