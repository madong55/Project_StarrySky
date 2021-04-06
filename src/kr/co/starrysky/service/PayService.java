/*
 * package kr.co.starrysky.service;
 * 
 * import java.util.List;
 * 
 * import javax.annotation.Resource;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import kr.co.starrysky.beans.PayBean; import kr.co.starrysky.beans.UserBean;
 * import kr.co.starrysky.dao.PayDao;
 * 
 * @Service public class PayService {
 * 
 * 
 * 
 * @Autowired private PayDao payDao;
 * 
 * @Resource(name = "loginUserBean") private UserBean loginUserBean;
 * 
 * 
 * 
 * //////////////////////////////// public List<PayBean> getCardList(String id)
 * {
 * 
 * return payDao.getCardList(id, rowBounds); }
 * 
 * public List<PayBean> getPayAll(){
 * 
 * return payDao.getPayAll();
 * 
 * }
 * 
 * 
 * }
 */