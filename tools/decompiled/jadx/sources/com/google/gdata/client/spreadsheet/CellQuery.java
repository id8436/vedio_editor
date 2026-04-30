package com.google.gdata.client.spreadsheet;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class CellQuery extends Query {
    public static final String MAXIMUM_COL = "max-col";
    public static final String MAXIMUM_ROW = "max-row";
    public static final String MINIMUM_COL = "min-col";
    public static final String MINIMUM_ROW = "min-row";
    public static final String RANGE = "range";
    public static final String RETURN_EMPTY = "return-empty";

    public CellQuery(URL url) {
        super(url);
    }

    public void setMinimumRow(Integer num) {
        if (num != null && num.intValue() > 0) {
            setIntegerCustomParameter(MINIMUM_ROW, num);
        } else {
            setIntegerCustomParameter(MINIMUM_ROW, null);
        }
    }

    public void setMaximumRow(Integer num) {
        if (num != null && num.intValue() > 0) {
            setIntegerCustomParameter(MAXIMUM_ROW, num);
        } else {
            setIntegerCustomParameter(MAXIMUM_ROW, null);
        }
    }

    public void setMinimumCol(Integer num) {
        if (num != null && num.intValue() > 0) {
            setIntegerCustomParameter(MINIMUM_COL, num);
        } else {
            setIntegerCustomParameter(MINIMUM_COL, null);
        }
    }

    public void setMaximumCol(Integer num) {
        if (num != null && num.intValue() > 0) {
            setIntegerCustomParameter(MAXIMUM_COL, num);
        } else {
            setIntegerCustomParameter(MAXIMUM_COL, null);
        }
    }

    public void setRange(String str) {
        setStringCustomParameter(RANGE, str);
    }

    public void setReturnEmpty(boolean z) {
        setStringCustomParameter(RETURN_EMPTY, "" + z);
    }

    public Integer getMinimumRow() {
        return getIntegerCustomParameter(MINIMUM_ROW);
    }

    public Integer getMaximumRow() {
        return getIntegerCustomParameter(MAXIMUM_ROW);
    }

    public Integer getMinimumCol() {
        return getIntegerCustomParameter(MINIMUM_COL);
    }

    public Integer getMaximumCol() {
        return getIntegerCustomParameter(MAXIMUM_COL);
    }

    public String getRange() {
        return getStringCustomParameter(RANGE);
    }

    public boolean getReturnEmpty() {
        return Boolean.parseBoolean(getStringCustomParameter(RETURN_EMPTY));
    }
}
