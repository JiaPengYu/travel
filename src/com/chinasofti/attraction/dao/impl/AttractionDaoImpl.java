package com.chinasofti.attraction.dao.impl;

import com.chinasofti.attraction.dao.AttractionDao;
import com.chinasofti.attraction.entity.Attraction;
import com.chinasofti.base.impl.BaseDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AttractionDaoImpl extends BaseDaoImpl<Attraction> implements AttractionDao {
}
