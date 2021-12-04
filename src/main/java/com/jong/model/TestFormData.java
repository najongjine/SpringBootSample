package com.jong.model;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class TestFormData {
	private String t1;
	private List<TestFormData_T2> t2=new ArrayList<TestFormData_T2>();

}
