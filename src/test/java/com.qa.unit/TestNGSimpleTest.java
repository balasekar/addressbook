package com.qa.unit;

import org.testng.annotations.Test;

import static org.testng.Assert.assertEquals;

@Test(groups = {"unittests"})
public class TestNGSimpleTest {
    @Test(groups = {"smoke"})
    public void testAdd() {
        String str = "TestNG is working fine";
        assertEquals("TestNG is working fine", str);
    }
}