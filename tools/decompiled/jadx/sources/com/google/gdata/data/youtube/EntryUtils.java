package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Category;
import com.google.gdata.data.extensions.FeedLink;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class EntryUtils {
    static void setKind(BaseEntry<?> baseEntry, String str) {
        removeKindCategory(baseEntry.getCategories().iterator());
        addKindCategory(baseEntry.getCategories(), str);
    }

    static void setKind(BaseFeed<?, ?> baseFeed, String str) {
        removeKindCategory(baseFeed.getCategories().iterator());
        addKindCategory(baseFeed.getCategories(), str);
    }

    private static void removeKindCategory(Iterator<Category> it) {
        while (it.hasNext()) {
            if ("http://schemas.google.com/g/2005#kind".equals(it.next().getScheme())) {
                it.remove();
            }
        }
    }

    private static void addKindCategory(Set<Category> set, String str) {
        set.add(new Category("http://schemas.google.com/g/2005#kind", str));
    }

    static FeedLink<?> getFeedLink(BaseEntry<?> baseEntry, String str) {
        for (T t : baseEntry.getRepeatingExtension(FeedLink.class)) {
            if (str.equals(t.getRel())) {
                return t;
            }
        }
        return null;
    }

    private EntryUtils() {
        throw new IllegalStateException("");
    }
}
