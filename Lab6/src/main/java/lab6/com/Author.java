package lab6.com;

public class Author {
    private String authorno;
    private String name;
    private String address;
    private String city;
    private String state;
    private String zip;

    public Author(){}

    public Author(String authorno, String name, String address, String city, String state, String zip) {
        this.authorno = authorno;
        this.name = name;
        this.address = address;
        this.city = city;
        this.state = state;
        this.zip = zip;
    }

    public String getAuthorno() {
        return authorno;
    }

    public void setAuthorno(String authorno) {
        this.authorno = authorno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }
}
