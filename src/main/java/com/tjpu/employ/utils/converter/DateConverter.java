package com.tjpu.employ.utils.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter implements Converter<String, Date> {
	
	private static final String date="yyyy-MM-dd HH:mm:ss";
	@Override
	public Date convert(String s) {
		SimpleDateFormat sdf = new SimpleDateFormat(date);
		Date parse = null;
		try {
			parse = sdf.parse(s);
		} catch (ParseException e) {}
		
		
		return parse;
	}
}
