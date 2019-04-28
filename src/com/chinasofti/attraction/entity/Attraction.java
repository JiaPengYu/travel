package com.chinasofti.attraction.entity;

/**
 * @Description Attraction
 * @Author WYR
 * @CreateTime 2019-04-27 17:29
 */
public class Attraction {
    /**
     * 景点编号
     */
    private Integer attractionId;
    /**
     * 景点名称
     */
    private String attractionName;
    /**
     * 景点介绍
     */
    private String route;
    /**
     * 旅游路线
     */
    private String attractionDesc;

    public Integer getAttractionId() {
        return attractionId;
    }

    public void setAttractionId(Integer attractionId) {
        this.attractionId = attractionId;
    }

    public String getAttractionName() {
        return attractionName;
    }

    public void setAttractionName(String attractionName) {
        this.attractionName = attractionName;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public String getAttractionDesc() {
        return attractionDesc;
    }

    public void setAttractionDesc(String attractionDesc) {
        this.attractionDesc = attractionDesc;
    }
}
