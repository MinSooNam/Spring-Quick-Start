package com.springbook.view.controller;

/**
 * Created by Namsoo on 2017. 12. 2..
 */
public class ViewResolver {
    public String prefix;
    public String suffix;

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public String getView(String viewName)
    {
        return prefix+viewName+suffix;
    }
}
