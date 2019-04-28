package com.chinasofti.base;

import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

/**
 * @Description BaseDao
 * @Author WYR
 * @CreateTime 2019-04-27 15:54
 */
public interface BaseDao<T> {

    /**
     * 查询全部信息
     *
     * @return
     */
    List<T> queryAll();

    /**
     * 查询全部信息的分页
     *
     * @param pageBean
     * @return
     */
    List<T> queryByPageBean(PageBean pageBean);

    /**
     * 单条查询
     *
     * @param field
     * @param id
     * @return
     */
    T query(String field, Integer id);

    /**
     * 添加
     *
     * @param t
     */
    void add(T t);

    /**
     * 修改
     *
     * @param t
     */
    void update(T t);

    /**
     * 删除
     *
     * @param t
     */
    void delete(T t);

    /**
     * 查询总数
     *
     * @return
     */
    Integer getCount();


}
