package kr.co.starrysky.config;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.starrysky.beans.PresentPageCheckBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.interceptor.CheckLoginInterceptor;
import kr.co.starrysky.interceptor.CheckReadInterceptor;
import kr.co.starrysky.interceptor.CheckWriterInterceptor;
import kr.co.starrysky.interceptor.TopMenuInterceptor;
import kr.co.starrysky.mapper.LocationMapper;
import kr.co.starrysky.mapper.ProductMapper;
import kr.co.starrysky.mapper.QnABoardMapper;
import kr.co.starrysky.mapper.ReviewMapper;
import kr.co.starrysky.mapper.UserMapper;
import kr.co.starrysky.mapper.WeatherMapper;
import kr.co.starrysky.service.QnABoardService;

//Spring MVC 프로젝트에 관련된 설정을 하는 클래스
//(servlet-context에서 <annotation-driven/>와 같음)
@Configuration 
//Controller 어노테이션이 셋팅되어 있는 클래스를 Controller로 등록한다.
@EnableWebMvc
//스캔할 패키지를 지정한다.
@ComponentScan("kr.co.starrysky.controller")
@ComponentScan("kr.co.starrysky.service")
@ComponentScan("kr.co.starrysky.dao")
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	// Controller의 메서드가 반환하는 jsp의 이름 앞뒤에 경로와 확장자를 붙혀주도록 설정한다.
	
	@Value("${db.classname}")
	private String db_classname;
	
	@Value("${db.url}")
	private String db_url;
	
	@Value("${db.username}")
	private String db_username;
	
	@Value("${db.password}")
	private String db_password;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@Autowired
	private QnABoardService qnaBoardService;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	// 정적 파일의 경로를 매핑한다.
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/user/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/shop/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/shop/product/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/review/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/shop/board/**").addResourceLocations("/resources/");
		//registry.addResourceHandler("/shop/index").addResourceLocations("file:////var/lib/tomcat8/webapps/ROOT/resources/");
		//registry.addResourceHandler("/shop/product/product_list").addResourceLocations("file:////var/lib/tomcat8/webapps/ROOT/resources/");
	}
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		
		return source;
	}
	
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception{
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}

	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<ProductMapper> getProductMapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<ProductMapper> factoryBean = new MapperFactoryBean<ProductMapper>(ProductMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<WeatherMapper> getWeatherMapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<WeatherMapper> factoryBean = new MapperFactoryBean<WeatherMapper>(WeatherMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<LocationMapper> getLocationMapper(SqlSessionFactory factory) throws Exception{
		MapperFactoryBean<LocationMapper> factoryBean = new MapperFactoryBean<LocationMapper>(LocationMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<ReviewMapper> getReviewMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<ReviewMapper> factoryBean = new MapperFactoryBean<ReviewMapper>(ReviewMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<QnABoardMapper> getQnABoardMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<QnABoardMapper> factoryBean = new MapperFactoryBean<QnABoardMapper>(QnABoardMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		WebMvcConfigurer.super.addInterceptors(registry);
		
		TopMenuInterceptor topMenuIntercepter = new TopMenuInterceptor(loginUserBean, presentPageCheckBean);
		InterceptorRegistration reg1 = registry.addInterceptor(topMenuIntercepter);
		reg1.addPathPatterns("/**");
		
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
		
		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		reg2.addPathPatterns("/user/modify","/user/logout","/shop/product/shopping_cart","/shop/product/shopping_cart_from_details","/shop/board/*");
		reg2.excludePathPatterns("/shop/index","/shop/board/main"); // 비로그인 상태여도 보이게
		
		//문의 게시판에서 수정, 삭제 권한 없는 회원이 들어오면 진입을 막고 바로 다른 곳으로 보내버리는 인터셉터
		CheckWriterInterceptor checkWriterInterceptor = new CheckWriterInterceptor(loginUserBean, qnaBoardService);
		InterceptorRegistration reg3 = registry.addInterceptor(checkWriterInterceptor);
		reg3.addPathPatterns("/shop/board/modify", "/review/modify", "/review/delete");
		
		CheckReadInterceptor checkReadInterceptor = new  CheckReadInterceptor(loginUserBean, qnaBoardService); InterceptorRegistration
		reg4 = registry.addInterceptor(checkReadInterceptor);
		reg4.addPathPatterns("/shop/board/read");
	}
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		
		res.setBasenames("/WEB-INF/properties/error_message");
		return res;
	}
	
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver(); //객체 생성하여 반환
	}

	
}
