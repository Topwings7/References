package beans;

import java.time.LocalDate;
import java.util.ArrayList;

public class Marvel {
	private ArrayList<String> genre; //장르
	private String director; //감독
	private ArrayList<String> scenario; //각본
	private String original; //원작
	private ArrayList<String> making; //제작
	private ArrayList<String> actor; //출연
	private String shooting;  //촬영
	private String music; //음악
	private LocalDate start; //시작일
	private LocalDate end;   //종료일
	private String studio; //제작사
	private ArrayList<String> film; //배급사
	private LocalDate opendate; //개봉일
	private int runtime; //상영시간
	private long cost; //제작비
	private long worldbox; //월드박스오피스
	private long usbox; //북미 박스오피스
	private long attendance; //관객수
	public Marvel() {
	}
	public Marvel(ArrayList<String> genre, String director, ArrayList<String> scenario, String original,
			ArrayList<String> making, ArrayList<String> actor, String shooting, String music, LocalDate start,
			LocalDate end, String studio, ArrayList<String> film, LocalDate opendate, int runtime, long cost,
			long worldbox, long usbox, long attendance) {
		super();
		this.genre = genre;
		this.director = director;
		this.scenario = scenario;
		this.original = original;
		this.making = making;
		this.actor = actor;
		this.shooting = shooting;
		this.music = music;
		this.start = start;
		this.end = end;
		this.studio = studio;
		this.film = film;
		this.opendate = opendate;
		this.runtime = runtime;
		this.cost = cost;
		this.worldbox = worldbox;
		this.usbox = usbox;
		this.attendance = attendance;
	}
	public ArrayList<String> getGenre() {
		return genre;
	}
	public void setGenre(ArrayList<String> genre) {
		this.genre = genre;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public ArrayList<String> getScenario() {
		return scenario;
	}
	public void setScenario(ArrayList<String> scenario) {
		this.scenario = scenario;
	}
	public String getOriginal() {
		return original;
	}
	public void setOriginal(String original) {
		this.original = original;
	}
	public ArrayList<String> getMaking() {
		return making;
	}
	public void setMaking(ArrayList<String> making) {
		this.making = making;
	}
	public ArrayList<String> getActor() {
		return actor;
	}
	public void setActor(ArrayList<String> actor) {
		this.actor = actor;
	}
	public String getShooting() {
		return shooting;
	}
	public void setShooting(String shooting) {
		this.shooting = shooting;
	}
	public String getMusic() {
		return music;
	}
	public void setMusic(String music) {
		this.music = music;
	}
	public LocalDate getStart() {
		return start;
	}
	public void setStart(LocalDate start) {
		this.start = start;
	}
	public LocalDate getEnd() {
		return end;
	}
	public void setEnd(LocalDate end) {
		this.end = end;
	}
	public String getStudio() {
		return studio;
	}
	public void setStudio(String studio) {
		this.studio = studio;
	}
	public ArrayList<String> getFilm() {
		return film;
	}
	public void setFilm(ArrayList<String> film) {
		this.film = film;
	}
	public LocalDate getOpendate() {
		return opendate;
	}
	public void setOpendate(LocalDate opendate) {
		this.opendate = opendate;
	}
	public int getRuntime() {
		return runtime;
	}
	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}
	public long getCost() {
		return cost;
	}
	public void setCost(long cost) {
		this.cost = cost;
	}
	public long getWorldbox() {
		return worldbox;
	}
	public void setWorldbox(long worldbox) {
		this.worldbox = worldbox;
	}
	public long getUsbox() {
		return usbox;
	}
	public void setUsbox(long usbox) {
		this.usbox = usbox;
	}
	public long getAttendance() {
		return attendance;
	}
	public void setAttendance(long attendance) {
		this.attendance = attendance;
	}
	@Override
	public String toString() {
		return "Marvel [genre=" + genre + ", director=" + director + ", scenario=" + scenario + ", original=" + original
				+ ", making=" + making + ", actor=" + actor + ", shooting=" + shooting + ", music=" + music + ", start="
				+ start + ", end=" + end + ", studio=" + studio + ", film=" + film + ", opendate=" + opendate
				+ ", runtime=" + runtime + ", cost=" + cost + ", worldbox=" + worldbox + ", usbox=" + usbox
				+ ", attendance=" + attendance + "]";
	}
}
