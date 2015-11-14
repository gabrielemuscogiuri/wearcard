dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "com.mysql.jdbc.Driver"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/wearcard?autoReconnect=true"
            username = "root"
            password = "password"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3307/michelevergnano?autoReconnect=true"
            username = "michelevergnano"
            password = "mikymiky"
            properties {
                maxActive = 10
                maxIdle = 2
                minIdle = 1
                initialSize = 1
                minEvictableIdleTimeMillis = 60000
                timeBetweenEvictionRunsMillis = 60000
                numTestsPerEvictionRun = 3
                maxWait = 10000
                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = true
                validationQuery = "select 1"
            }
        }
    }
}
