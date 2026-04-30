package com.google.gdata.data.projecthosting;

import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectHostingNamespace {
    public static final String ISSUES_PREFIX = "http://schemas.google.com/projecthosting/issues/2009#";
    public static final String PROJECTS_PREFIX = "http://schemas.google.com/projecthosting/projects/2010#";
    public static final String ISSUES_ALIAS = "issues";
    public static final String ISSUES = "http://schemas.google.com/projecthosting/issues/2009";
    public static final XmlNamespace ISSUES_NS = new XmlNamespace(ISSUES_ALIAS, ISSUES);
    public static final String PROJECTS_ALIAS = "projects";
    public static final String PROJECTS = "http://schemas.google.com/projecthosting/projects/2010";
    public static final XmlNamespace PROJECTS_NS = new XmlNamespace(PROJECTS_ALIAS, PROJECTS);

    private ProjectHostingNamespace() {
    }
}
