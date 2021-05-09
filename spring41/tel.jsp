<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Random r = new Random();
	int num3 = r.nextInt(899999) + 100000;

%> <%= num3 %>