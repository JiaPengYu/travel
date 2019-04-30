package com.chinasofti.attraction.dao;

import com.chinasofti.attraction.entity.Attraction;
import com.chinasofti.base.BaseDao;
import com.chinasofti.base.PageBean;

import java.util.List;

public interface AttractionDao extends BaseDao<Attraction> {

    public List<Attraction> changePlace();

    public List<Attraction> queryByPageBean(PageBean pageBean);
}
