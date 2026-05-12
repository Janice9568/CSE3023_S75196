package lab6.com;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Student {
    private String stuno;
    private String name;
    private String program;

    public Student(){}

    public Student(String stuno, String name, String program) {
        this.stuno = stuno;
        this.name = name;
        this.program = program;
    }

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        Pattern pt = Pattern.compile("[A-Z0-9]+");
        Matcher mt = pt.matcher(stuno);

        if (mt.matches()) {
            this.stuno = stuno;
        } else {
            this.stuno = "INVALID_STUDENT_NO";
            throw new IllegalArgumentException("Invalid student number format: " + stuno);
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }
}
