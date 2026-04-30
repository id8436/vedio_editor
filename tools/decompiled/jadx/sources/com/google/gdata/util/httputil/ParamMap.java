package com.google.gdata.util.httputil;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ParamMap {
    private final Map<String, List<String>> map = Maps.newHashMap();

    @Deprecated
    public String[] get(String str) {
        List<String> list = this.map.get(str);
        if (list == null) {
            return null;
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    public boolean containsKey(String str) {
        return this.map.containsKey(str);
    }

    @Deprecated
    public void append(String str, String str2) {
        List<String> list = this.map.get(str);
        if (list != null) {
            list.add(str2);
        } else {
            this.map.put(str, Lists.newArrayList(str2));
        }
    }

    @Deprecated
    public void put(String str, String[] strArr) {
        this.map.put(str, Lists.newArrayList(strArr));
    }

    @Deprecated
    public Map<String, String[]> toMap() {
        HashMap mapNewHashMap = Maps.newHashMap();
        for (Map.Entry<String, List<String>> entry : this.map.entrySet()) {
            List<String> value = entry.getValue();
            mapNewHashMap.put(entry.getKey(), value.toArray(new String[value.size()]));
        }
        return mapNewHashMap;
    }
}
