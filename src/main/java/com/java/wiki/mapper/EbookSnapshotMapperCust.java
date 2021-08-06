package com.java.wiki.mapper;

import com.java.wiki.resp.StatisticResp;

import java.util.List;

public interface EbookSnapshotMapperCust {
    public void getSnapshot();

    List<StatisticResp> getStatistic();
}
