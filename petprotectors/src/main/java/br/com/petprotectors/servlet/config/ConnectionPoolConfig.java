package br.com.petprotectors.servlet.config;

import org.apache.commons.dbcp2.BasicDataSource;

public class ConnectionPoolConfig {
    private static BasicDataSource dataSource;

    public static BasicDataSource getDataSource() {
        if (dataSource == null) {

        }

        return dataSource;
    }
}
