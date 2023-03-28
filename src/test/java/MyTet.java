import com.pension.pojo.NurAdmin;
import com.pension.pojo.NurUser;
import com.pension.service.NurAdminService;
import com.pension.service.NurUserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTet {
    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NurAdminService NurAdminServiceImpl = (NurAdminService) context.getBean("NurAdminServiceImpl");
        NurAdmin user = NurAdminServiceImpl.getNurAdminById(1);
        System.out.println(user);

    }


    @Test
    public void test2(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NurUserService nurUserServiceImpl = (NurUserService) context.getBean("NurUserServiceImpl");
        List<NurUser> userList = nurUserServiceImpl.getAllNurUser();
        System.out.println(userList.toString());
    }
}
