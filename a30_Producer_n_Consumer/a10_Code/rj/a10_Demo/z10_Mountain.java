package rj.a10_Demo;


import java.util.Objects;

// Just testing Java. Ignore / Delete this if needed
public class z10_Mountain {
    private final String name;
    private final double latitude, longitude;
    private String country;

    public String getName() {
        return name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        z10_Mountain that = (z10_Mountain) o;
        return Double.compare(that.latitude, latitude) == 0 &&
                Double.compare(that.longitude, longitude) == 0 &&
                name.equals(that.name) &&
                country.equals(that.country);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, latitude, longitude, country);
    }

    @Override
    public String toString() {
        return "z10_Mountain{" +
                "name='" + name + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", country='" + country + '\'' +
                '}';
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public z10_Mountain(String name, double latitude, double longitude) {
        this.name = name;
        this.latitude = latitude;
        this.longitude = longitude;
    }
}
