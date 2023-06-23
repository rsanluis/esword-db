package com.codified.esword;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@TestMethodOrder(OrderAnnotation.class)
public class VerifyCountsTest {

  @Autowired
  JdbcTemplate jdbcTemplate;

  @Test
  public void testWordMatchesPopulateDBs() {
    String tableName = "Bible";
    Integer rowSize = getRowSizeFromTable(tableName);
    assertNotNull(rowSize);
    log.info("rowSize: {}", rowSize);
    assertTrue(rowSize == 31102);

    tableName = "BibleFTS";
    rowSize = getRowSizeFromTable(tableName);
    assertNotNull(rowSize);
    log.info("rowSize: {}", rowSize);
    assertTrue(rowSize == 31102);

    tableName = "Details";
    rowSize = getRowSizeFromTable(tableName);
    assertNotNull(rowSize);
    log.info("rowSize: {}", rowSize);
    assertTrue(rowSize == 1);
  }

  private Integer getRowSizeFromTable(String tableName) {
    return jdbcTemplate.queryForObject("select count(*) from " + tableName + "", Integer.class);
  }
}
