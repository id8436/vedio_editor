package com.google.gdata.client.contacts;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class ContactQuery extends Query {
    private String group;
    private OrderBy orderBy;
    private Boolean showDeleted;
    private SortOrder sortOrder;

    public enum OrderBy {
        EDITED("edited"),
        LAST_MODIFIED("lastmodified"),
        NONE("none");

        private final String value;

        OrderBy(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public enum SortOrder {
        ASCENDING("ascending"),
        DESCENDING("descending"),
        NONE("none");

        private final String value;

        SortOrder(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public ContactQuery(URL url) {
        super(url);
        this.orderBy = OrderBy.NONE;
        this.showDeleted = false;
        this.sortOrder = SortOrder.NONE;
    }

    public String getGroup() {
        return this.group;
    }

    public void setGroup(String str) {
        if (this.group == null) {
            if (str == null) {
                return;
            }
        } else if (this.group.equals(str)) {
            return;
        }
        this.group = str;
        setStringCustomParameter("group", str);
    }

    public OrderBy getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(OrderBy orderBy) {
        if (orderBy == null) {
            orderBy = OrderBy.NONE;
        }
        if (!this.orderBy.equals(orderBy)) {
            this.orderBy = orderBy;
            setStringCustomParameter("orderby", orderBy == OrderBy.NONE ? null : orderBy.toValue());
        }
    }

    public Boolean getShowDeleted() {
        return this.showDeleted;
    }

    public void setShowDeleted(Boolean bool) {
        if (bool == null) {
            bool = false;
        }
        if (!this.showDeleted.equals(bool)) {
            this.showDeleted = bool;
            setStringCustomParameter("showdeleted", !bool.booleanValue() ? null : bool.toString());
        }
    }

    public SortOrder getSortOrder() {
        return this.sortOrder;
    }

    public void setSortOrder(SortOrder sortOrder) {
        if (sortOrder == null) {
            sortOrder = SortOrder.NONE;
        }
        if (!this.sortOrder.equals(sortOrder)) {
            this.sortOrder = sortOrder;
            setStringCustomParameter("sortorder", sortOrder == SortOrder.NONE ? null : sortOrder.toValue());
        }
    }
}
