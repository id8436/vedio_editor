package com.google.gdata.model.atom;

import com.google.gdata.model.Element;
import com.google.gdata.model.gd.GdAttributes;

/* JADX INFO: loaded from: classes3.dex */
class Kinds {
    static String getElementKind(Element element) {
        String str = (String) element.getAttributeValue(GdAttributes.KIND);
        if (str == null) {
            for (Category category : element.getElements(Category.KEY)) {
                if ("http://schemas.google.com/g/2005#kind".equals(category.getScheme())) {
                    return category.getTerm();
                }
            }
            return null;
        }
        return str;
    }

    private Kinds() {
    }
}
