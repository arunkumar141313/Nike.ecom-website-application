package com.nike;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import Nike.ecom.MainController;
import Nike.ecom.RegisterDao;
import Nike.ecom.RegisterPojo;
import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:test-Nike-servlet.xml"})
public class ControllerTest extends TestCase {

	@Before
	public void setUp() {
		
		MockitoAnnotations.initMocks(this);
		mockmvc = MockMvcBuilders.standaloneSetup(MainController.class).build();
	}
		
	private MockMvc mockmvc;
	
	@InjectMocks
	private MainController maincontroller;
	

	@Mock
	private RegisterPojo registerpojo;
	
	@Mock
	private RegisterDao registerdao;


	@Test
	public void login() throws Exception {
		
		MvcResult result = mockmvc.perform(MockMvcRequestBuilders.get("/login"))
							.andExpect(MockMvcResultMatchers.status().isOk())
							 .andExpect(MockMvcResultMatchers.view().name("/login"))
						        .andExpect(MockMvcResultMatchers.forwardedUrl("/login"))
						        .andReturn();
		
		  Assert.assertNotNull(result.getModelAndView());
	}
	
	@Test
	public void logintestAction() throws Exception {
		String email = "arun@gmail.com";
		String password = "Arun@1998";
		
		Mockito.when(registerpojo.getEmail()).thenReturn(email);
		Mockito.when(registerpojo.getPassword()).thenReturn(password);
		
		MvcResult result = (MvcResult) mockmvc.perform(MockMvcRequestBuilders.get("/login")
				.param(email,"arun@gmail.com")
				.param(password, "Arun@1998"))
				 .andExpect(MockMvcResultMatchers.status().isOk())
				  .andExpect(MockMvcResultMatchers.content().contentType("application/json;charset=UTF-8")) 
				  .andReturn();
				  Assert.assertNotNull(result);		  
				  }
						
		
	
		
	}
	


























