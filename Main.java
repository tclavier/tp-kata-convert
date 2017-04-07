package fr.univlille1.iutinfo.convert;

import java.util.ArrayList;
import java.util.List;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class Main {
	public static void main(String[] args){
	    List<Class> tests = new ArrayList();
	    tests.add(ConvertTest.class);

	    for (Class test : tests){
	        runTests(test);
	    }
	}

	private static void runTests(Class test){
	    Result result = JUnitCore.runClasses(test);
	    for (Failure failure : result.getFailures()){
	        System.out.println(failure.toString());
	    }
	}
}
