package com.java.wiki.mapper;

import org.apache.ibatis.annotations.Param;

public interface DocMapperCust {

    public void increaseVieCount(@Param("id") Long id);
}
