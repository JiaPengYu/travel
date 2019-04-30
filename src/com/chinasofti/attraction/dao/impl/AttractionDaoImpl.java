package com.chinasofti.attraction.dao.impl;

import com.chinasofti.admin.entity.Admin;
import com.chinasofti.attraction.dao.AttractionDao;
import com.chinasofti.attraction.entity.Attraction;
import com.chinasofti.base.PageBean;
import com.chinasofti.base.impl.BaseDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;
import java.util.List;

@Repository
public class AttractionDaoImpl extends BaseDaoImpl<Attraction> implements AttractionDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    public List<Attraction> changePlace() {

        List<Attraction> list = new ArrayList<>();
        List num = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            int id = (int) (Math.random() * (32 - 25 + 1) + 25);
            Attraction attraction = hibernateTemplate.get(Attraction.class, id);
            list.add(attraction);
        }
        return list;
    }
    @Override
    public List<Attraction> queryByPageBean(PageBean pageBean) {
        /*return hibernateTemplate.execute(session ->
                session.createQuery("from Attraction").list());*/
        return hibernateTemplate.execute(session -> session.createQuery("from Attraction")
                .setFirstResult(pageBean.getPageIndex())
                .setMaxResults(pageBean.getPageCount())
                .list());
    }
}
