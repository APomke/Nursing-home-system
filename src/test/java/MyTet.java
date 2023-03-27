import com.pension.pojo.NurAdmin;
import com.pension.service.NurAdminService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTet {

    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NurAdminService NurAdminServiceImpl = (NurAdminService) context.getBean("NurAdminServiceImpl");
        NurAdmin user = NurAdminServiceImpl.getNurAdminById(1);
        System.out.println(user);

    }
}
