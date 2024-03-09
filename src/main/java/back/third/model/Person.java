package back.third.model;

public class Person {
    int id;
    String tel;
    String email;
    String birth;
    String gender;
    String fovoLang;
    String bio;

    public Person(int id, String tel, String email, String birth, String gender, String fovoLang, String bio) {
        this.id = id;
        this.tel = tel;
        this.email = email;
        this.birth = birth;
        this.gender = gender;
        this.fovoLang = fovoLang;
        this.bio = bio;
    }

    public Person() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFovoLang() {
        return fovoLang;
    }

    public void setFovoLang(String fovoLang) {
        this.fovoLang = fovoLang;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }
}
