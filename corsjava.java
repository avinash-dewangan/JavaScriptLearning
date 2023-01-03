@SpringBootApplication
public class ApplicationManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApplicationManagementApplication.class, args);
	}

	@Bean
	public WebMvcConfigurer configurer(){
		return new WebMvcConfigurer(){
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/*")
						.allowedOrigins("*");
			}
		};
	}
}