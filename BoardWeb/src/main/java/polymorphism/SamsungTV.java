package polymorphism;

/**
 * Created by Namsoo on 2017. 10. 28..
 */
public class SamsungTV implements TV {
    private Speaker speaker;
    private int price;

    public SamsungTV() {
        System.out.println("삼성 TV - 객체 생성");
    }

    //생성자 인젝션
    public SamsungTV(Speaker speaker) {
        System.out.println("삼성 TV - 스피커와 함께 객체 생성");
        this.speaker = speaker;
    }

    //생성자 인젝션 - 다중 변수 매핑
    public SamsungTV(Speaker speaker, int price) {
        System.out.println("삼성 TV - 스피커와 함께 객체 생성");
        this.speaker = speaker;
        this.price = price;
    }

    //세터 인젝션 - 대부분 세터 인젝션을 사용
    public void setSpeaker(Speaker speaker){
        System.out.println("setSpeaker 호출");
        this.speaker = speaker;
    }

    public void setPrice(int price) {
        System.out.println("setPrice 호출");
        this.price = price;
    }

    public void initMethod() {
        System.out.println("객체 초기화 작업 처리...");
    }

    public void destoryMethod() {
        System.out.println("객체 제거 전 처리할 작업...");
    }

    public void powerOn() {
        System.out.println("삼성 TV - 전원 켠다" + "가격 : " + price);
    }

    public void powerOff() {
        System.out.println("삼성 TV - 전원 끈다");
    }

    public void volumeUp() {
        speaker.volumeUp();
    }

    public void volumeDown() {
        speaker.volumeDown();
    }
}
