
class solr::install {
  package { "solr-tomcat":
    ensure  => present,
    require => [
    	Class["phpfpm"],
    	Class["nginx"],
    ]
  }
}