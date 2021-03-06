define(function(require) {
	var template = '<compile selected="{{spring}}">'
			+ '<!-- Spring Cloud -->'
			+ '<spring>'
			+ '<java>'
			+ '<configServer>'
			+ '<imports>'
			+ '<import>org.springframework.cloud.config.server.EnableConfigServer</import>'
			+ '</imports>'
			+ '<annotations>'
			+ '<annotation>@EnableConfigServer</annotation>'
			+ '</annotations>'
			+ '<dependencies>'
			+ '<dependency>'
			+ '<groupId>org.springframework.cloud</groupId>'
			+ '<artifactId>spring-cloud-config-server</artifactId></dependency></dependencies></configServer><eurekaServer><imports><import>org.springframework.cloud.netflix.eureka.server.EnableEurekaServer</import>'
			+ '</imports><annotation>@EnableEurekaServer</annotation><dependencies><dependency><groupId>org.springframework.cloud</groupId><artifactId>spring-cloud-starter-eureka-server</artifactId></dependency>'
			+ '</dependencies></eurekaServer><discoveryClient><imports><import>org.springframework.cloud.client.discovery.EnableDiscoveryClient</import>'
			+ '</imports><annotation>@EnableDiscoveryClient</annotation><dependencies><dependency><groupId>org.springframework.cloud</groupId>'
			+ '<artifactId>spring-cloud-config-server</artifactId></dependency></dependencies></discoveryClient><sidecar><import>org.springframework.cloud.netflix.sidecar.EnableSidecar</import>'
			+ '<annotation>@EnableSidecar</annotation><dependencies><dependency><groupId>org.springframework.cloud</groupId>'
			+ '<artifactId>spring-cloud-netflix-sidecar</artifactId></dependency></dependencies></sidecar></java><php></php></spring>'
			+ '<!-- All service in a package --><bundle></bundle></compile><doc><domain>http:// 127.0.0.1:8080</domain><output>javascript</output></doc>';
	return template;
})