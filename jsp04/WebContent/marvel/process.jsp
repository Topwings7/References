<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="marvel" class="beans.Marvel" scope="request"/>
<%
 String[] gen = request.getParameterValues("gen");
 String[] secnari = request.getParameterValues("scenari");
 String[] maki = request.getParameterValues("maki");
 String[] act = request.getParameterValues("act");
 String stD = request.getParameter("stD");
 String enD = request.getParameter("enD");
 String open = request.getParameter("open");
 String[] fil = request.getParameterValues("fil");
 
 ArrayList<String> genre = new ArrayList<String>();
 ArrayList<String> scenario = new ArrayList<String>();
 ArrayList<String> making = new ArrayList<String>();
 ArrayList<String> actor = new ArrayList<String>();
 ArrayList<String> film = new ArrayList<String>();
 
 for(int i=0 ; i < gen.length ; i++){
	genre.add(gen[i]);	 
 }
 for(int i=0 ; i < secnari.length ; i++){
	 scenario.add(secnari[i]);
 }
 for(int i=0 ; i < maki.length ; i++){
	 making.add(maki[i]);
 }
 for(int i=0 ; i < act.length ; i++){
	 actor.add(act[i]);
 }
 for(int i=0 ; i < fil.length ; i++){
	 film.add(fil[i]);
 }
 LocalDate start = LocalDate.parse(stD);
 LocalDate end = LocalDate.parse(enD);
 LocalDate opendate = LocalDate.parse(open);
 
 marvel.setGenre(genre);
 marvel.setScenario(scenario);
 marvel.setMaking(making);
 marvel.setActor(actor);
 marvel.setFilm(film);
 marvel.setStart(start);
 marvel.setEnd(end);
 marvel.setOpendate(opendate);
 
 
%>
<jsp:setProperty property="*" name="marvel"/>
<% out.print(marvel);%>