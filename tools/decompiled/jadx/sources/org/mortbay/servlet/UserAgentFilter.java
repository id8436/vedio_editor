package org.mortbay.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/* JADX INFO: loaded from: classes3.dex */
public class UserAgentFilter implements Filter {
    private Map _agentCache = new HashMap();
    private int _agentCacheSize = 1024;
    private String _attribute;
    private Pattern _pattern;

    @Override // javax.servlet.Filter
    public void destroy() {
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        if (this._attribute != null && this._pattern != null) {
            servletRequest.setAttribute(this._attribute, getUserAgent(servletRequest));
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this._attribute = filterConfig.getInitParameter("attribute");
        String initParameter = filterConfig.getInitParameter("userAgent");
        if (initParameter != null) {
            this._pattern = Pattern.compile(initParameter);
        }
        String initParameter2 = filterConfig.getInitParameter("cacheSize");
        if (initParameter2 != null) {
            this._agentCacheSize = Integer.parseInt(initParameter2);
        }
    }

    public String getUserAgent(ServletRequest servletRequest) {
        return getUserAgent(((HttpServletRequest) servletRequest).getHeader("User-Agent"));
    }

    public String getUserAgent(String str) {
        String str2;
        String strGroup;
        if (str == null) {
            return null;
        }
        synchronized (this._agentCache) {
            str2 = (String) this._agentCache.get(str);
        }
        if (str2 != null) {
            return str2;
        }
        Matcher matcher = this._pattern.matcher(str);
        if (!matcher.matches()) {
            strGroup = str;
        } else if (matcher.groupCount() > 0) {
            strGroup = str2;
            for (int i = 1; i <= matcher.groupCount(); i++) {
                String strGroup2 = matcher.group(i);
                if (strGroup2 != null) {
                    strGroup = strGroup == null ? strGroup2 : new StringBuffer().append(strGroup).append(strGroup2).toString();
                }
            }
        } else {
            strGroup = matcher.group();
        }
        synchronized (this._agentCache) {
            if (this._agentCache.size() >= this._agentCacheSize) {
                this._agentCache.clear();
            }
            this._agentCache.put(str, strGroup);
        }
        return strGroup;
    }
}
