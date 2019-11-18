package fdp.project.spring.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fdp.project.spring.helper.RegexHelper;
import fdp.project.spring.helper.RetrofitHelper;
import fdp.project.spring.helper.WebHelper;
import fdp.project.spring.model.Em_Hospital;
import fdp.project.spring.model.EmergencyAddr;
import fdp.project.spring.service.ApiHospitalService;
import retrofit2.Call;
import retrofit2.Retrofit;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Controller_S {
   
     // --> import study.spring.springhelper.helper.WebHelper;
    @Autowired
    WebHelper webHelper;
    
    // --> import study.spring.springhelper.helper.RegexHelper;
    @Autowired
    RegexHelper regexHelper;
   
 // --> import study.spring.springhelper.helper.RetrofitHelper;
    @Autowired
    RetrofitHelper retrofitHelper;
    
    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    // --> import org.springframework.beans.factory.annotation.Value;
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
   /**
    * Simply selects the home view to render by returning its name.
    */
   @RequestMapping(value = "/17_Navigator.do", method = RequestMethod.GET)
   public String Navigator() {
      
      return "17_Navigator";
   }
   
   @RequestMapping(value = "/18_Intention.do", method = RequestMethod.GET)
   public String Intention() {
      
      return "18_Intention";
   }
   
   @RequestMapping(value = "/19_Team_introduction.do", method = RequestMethod.GET)
   public String Team_introduction() {
      
      return "19_Team_introduction";
   }
   
   @RequestMapping(value = "/20_Strong_point.do", method = RequestMethod.GET)
   public String Strong_point() {
      
      return "20_Strong_point";
   }

   @RequestMapping(value = "/30_Monitoring.do", method = RequestMethod.GET)
   public String Monitoring(Model model) {
      
      // Retrofit 객체 생성
      // -> import retrofit2.Retrofit;
      // -> import study.jsp.model1.service.ApiKobisService;
      Retrofit retrofit = retrofitHelper.getRetrofit(ApiHospitalService.BASE_URL);

      // Service 객체를 생성한다. 구현체는 Retrofit이 자동으로 생성해 준다.
      ApiHospitalService apiHospitalService = retrofit.create(ApiHospitalService.class);

      /** 2) 검색일 파라미터 처리 */
      // 검색어 키워드 받기
      String query = webHelper.getString("query", "");

      // 검색어가 없다면 서울특별시를 입력하여 자동 검색하도록 한다.
      if (query == null) {
         query = "서울특별시";
      }


      /** 3) API 연동 */
      // 검색 결과를 저장할 Beans 객체 선언
      Em_Hospital hospital = null;
      EmergencyAddr emergencyAddr = null;

      // 검색어가 존재할 경우 API를 통해 검색 결과 받아옴.
      if (query.equals("")) {
         Call<Em_Hospital> call = apiHospitalService.getHospital("서울특별시", 1, 49);
         try {
      hospital = call.execute().body();
         } catch (Exception e) {
      e.printStackTrace();
         }
      }
      
      if (query.equals("")) {
         Call<EmergencyAddr> call = apiHospitalService.getEmergencyAddr("서울특별시", 1, 49);
         try {
      emergencyAddr = call.execute().body();
         } catch (Exception e) {
      e.printStackTrace();
         }
      }
      
      
      
      return "30_Monitoring";
   }
   
}