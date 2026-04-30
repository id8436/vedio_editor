package com.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: Extractor.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f3791a = true;

    public List<b> a(String str) {
        if (str != null && str.length() != 0) {
            if ((this.f3791a ? str.indexOf(46) : str.indexOf(58)) != -1) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = d.h.matcher(str);
                while (matcher.find()) {
                    if (matcher.group(4) != null || (this.f3791a && !d.j.matcher(matcher.group(2)).matches())) {
                        String strGroup = matcher.group(3);
                        int iStart = matcher.start(3);
                        int iEnd = matcher.end(3);
                        Matcher matcher2 = d.i.matcher(strGroup);
                        if (matcher2.find()) {
                            strGroup = matcher2.group();
                            iEnd = strGroup.length() + iStart;
                        }
                        arrayList.add(new b(iStart, iEnd, strGroup, c.URL));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }
}
