package com.google.gdata.client.analytics;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class DataQuery extends Query {
    private String dimensions;
    private String endDate;
    private String filters;
    private String ids;
    private String metrics;
    private String segment;
    private String sort;
    private String startDate;

    public DataQuery(URL url) {
        super(url);
    }

    public String getDimensions() {
        return this.dimensions;
    }

    public void setDimensions(String str) {
        if (this.dimensions == null) {
            if (str == null) {
                return;
            }
        } else if (this.dimensions.equals(str)) {
            return;
        }
        this.dimensions = str;
        setStringCustomParameter("dimensions", str);
    }

    public String getEndDate() {
        return this.endDate;
    }

    public void setEndDate(String str) {
        if (this.endDate == null) {
            if (str == null) {
                return;
            }
        } else if (this.endDate.equals(str)) {
            return;
        }
        this.endDate = str;
        setStringCustomParameter("end-date", str);
    }

    public String getFilters() {
        return this.filters;
    }

    public void setFilters(String str) {
        if (this.filters == null) {
            if (str == null) {
                return;
            }
        } else if (this.filters.equals(str)) {
            return;
        }
        this.filters = str;
        setStringCustomParameter("filters", str);
    }

    public String getIds() {
        return this.ids;
    }

    public void setIds(String str) {
        if (this.ids == null) {
            if (str == null) {
                return;
            }
        } else if (this.ids.equals(str)) {
            return;
        }
        this.ids = str;
        setStringCustomParameter("ids", str);
    }

    public String getMetrics() {
        return this.metrics;
    }

    public void setMetrics(String str) {
        if (this.metrics == null) {
            if (str == null) {
                return;
            }
        } else if (this.metrics.equals(str)) {
            return;
        }
        this.metrics = str;
        setStringCustomParameter("metrics", str);
    }

    public String getSegment() {
        return this.segment;
    }

    public void setSegment(String str) {
        if (this.segment == null) {
            if (str == null) {
                return;
            }
        } else if (this.segment.equals(str)) {
            return;
        }
        this.segment = str;
        setStringCustomParameter("segment", str);
    }

    public String getSort() {
        return this.sort;
    }

    public void setSort(String str) {
        if (this.sort == null) {
            if (str == null) {
                return;
            }
        } else if (this.sort.equals(str)) {
            return;
        }
        this.sort = str;
        setStringCustomParameter(BehanceSDKUrlUtil.PARAM_KEY_SORT, str);
    }

    public String getStartDate() {
        return this.startDate;
    }

    public void setStartDate(String str) {
        if (this.startDate == null) {
            if (str == null) {
                return;
            }
        } else if (this.startDate.equals(str)) {
            return;
        }
        this.startDate = str;
        setStringCustomParameter("start-date", str);
    }
}
