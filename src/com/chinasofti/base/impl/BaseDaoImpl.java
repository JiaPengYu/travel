package com.chinasofti.base.impl;

import com.chinasofti.attraction.entity.Attraction;
import com.chinasofti.base.BaseDao;
import com.chinasofti.base.PageBean;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/**
 * @Description BaseDaoImpl
 * @Author WYR
 * @CreateTime 2019-04-27 15:55
 */

public class BaseDaoImpl<T> implements BaseDao<T> {

    private Class<T> clz;

    @Autowired
    private HibernateTemplate hibernateTemplate;

    public BaseDaoImpl() {
        Type baseDaoClass = this.getClass().getGenericSuperclass();
        ParameterizedType ptype = (ParameterizedType) baseDaoClass;
        Type[] types = ptype.getActualTypeArguments();
        clz = (Class<T>) (types[0]);
    }

    class QueryHibernateCallback implements HibernateCallback<List<T>> {
        @Override
        public List<T> doInHibernate(Session session) throws HibernateException {
            return session.createQuery("from " + clz.getSimpleName()).list();
        }
    }

    @Override
    public List<T> queryAll() {
        return hibernateTemplate.execute(new QueryHibernateCallback());
    }

    @Override
    public List<T> queryByPageBean(PageBean pageBean) {
        return hibernateTemplate.execute(session -> session.createQuery("from " + clz.getSimpleName())
                .setFirstResult(pageBean.getPageIndex())
                .setMaxResults(pageBean.getPageCount())
                .list());
    }

    @Override
    public T query(String field, Integer id) {
        return hibernateTemplate.execute(new HibernateCallback<T>() {
            @Override
            public T doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from " + clz.getSimpleName() + " where " + field + " = :id ").setParameter("id", id);
                return (T) query.uniqueResult();
            }
        });
    }

    @Override
    public void add(T t) {
        hibernateTemplate.save(t);
    }

    @Override
    public void update(T t) {
        hibernateTemplate.update(t);
    }

    @Override
    public void delete(T t) {
        hibernateTemplate.delete(t);
    }

    @Override
    public Integer getCount() {
        return hibernateTemplate.execute(new HibernateCallback<Integer>() {
            @Override
            public Integer doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("select count(1) from " + clz.getSimpleName());
                Long l = (Long) query.uniqueResult();
                return l.intValue();
            }
        });
    }
}
