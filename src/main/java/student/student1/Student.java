package student.student1;

public class Student {
    private String name;
    private String birthDay;
    private String address;
    private String img;

    public Student() {
    }

    public Student(String name, String birthDay, String address, String img) {
        this.name = name;
        this.birthDay = birthDay;
        this.address = address;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
