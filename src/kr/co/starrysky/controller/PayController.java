/*
 * package kr.co.starrysky.controller;
 * 
 * import java.util.List;
 * 
 * import javax.annotation.Resource; import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.PostMapping; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import kr.co.starrysky.beans.PayBean; import kr.co.starrysky.beans.UserBean;
 * import kr.co.starrysky.mapper.PayMapper; import
 * kr.co.starrysky.service.PayService;
 * 
 * @Controller
 * 
 * @RequestMapping("/pay") public class PayController {
 * 
 * @Autowired private PayService payService;
 * 
 * @Autowired PayMapper paymapper;
 * 
 * @Resource(name="loginUserBean") private UserBean loginUserBean;
 * 
 * // ================================================
 * 
 * @PostMapping("/input_pro") public String input_pro(PayBean databean) {
 * paymapper.insert_into(databean); return "pay/input_pro"; }
 * 
 * @GetMapping("/read_data") public String read_data(Model model) {
 * List<PayBean> list=paymapper.select_data();
 * 
 * model.addAttribute("list",list);
 * 
 * return "pay/read_data"; }
 * 
 * //����
 * 
 * @GetMapping("/mypay") public String index() { return "pay/mypay"; }
 * 
 * @GetMapping("/mypay_list") public String pay(Model model) {
 * 
 * List<PayBean> payList=payService.getPayAll(); model.addAttribute("payList",
 * payList);
 * 
 * return "mypay_list"; }
 * 
 * 
 * 
 * @GetMapping("/input_card") public String input_card(HttpSession session,
 * Model model) {
 * 
 * 
 * session.setAttribute("id", loginUserBean.getId());
 * model.addAttribute("pay",loginUserBean.getId()); return "pay/input_card"; }
 * 
 * @GetMapping("/input_cash") public String input_cash(HttpSession session,
 * Model model) { session.setAttribute("id", loginUserBean.getId());
 * model.addAttribute("pay",loginUserBean.getId()); return "pay/input_cash"; }
 * 
 * 
 * 
 * 
 * 
 * }
 */