package com.worldartx.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.worldartx.service.FileUploadServlet;

public class GeneralUtils {
	private static final Logger logger = LogManager.getLogger(GeneralUtils.class);
	public synchronized static Pattern getPatternCompiled(String regEx) {
		logger.info("Given Regex:"+regEx);
		return Pattern.compile(regEx);
	}
	public synchronized static Matcher getMatcher(String match, Pattern pattern) {
		return pattern.matcher(match) ;
	}
	/*
	 * public static void main(String []args) { String mobileRegEx ="^\\d{10}$";
	 * String emailRegEx ="^[A-Za-z0-9+_.-]+@(.+)$";
	 * 
	 * Pattern pattern = getPatternCompiled(mobileRegEx);
	 * System.out.println("pattern:"+pattern); Matcher matcher =
	 * getMatcher("9164560113",pattern);
	 * System.out.println("matcher:"+matcher.matches());
	 * 
	 * Pattern patternTwo = getPatternCompiled(emailRegEx);
	 * System.out.println("pattern2:"+patternTwo); Matcher matcherTwo =
	 * getMatcher("csarvade@gmail.com",patternTwo);
	 * System.out.println("matcher:"+matcherTwo.matches());
	 * 
	 * }
	 */
	
	public static String getDate(int days) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DATE, days);
		return dateFormat.format(c.getTime()).toString();
	}
}
