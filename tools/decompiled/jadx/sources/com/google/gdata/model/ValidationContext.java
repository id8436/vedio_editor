package com.google.gdata.model;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.common.base.Join;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ValidationContext {
    private Map<Element, List<ErrorContent>> errors = Maps.newLinkedHashMap();

    public Map<Element, List<ErrorContent>> getErrors() {
        return Collections.unmodifiableMap(this.errors);
    }

    public void addError(Element element, String str) {
        addError(element, CoreErrorDomain.ERR.invalidExtension.withInternalReason(str));
    }

    public void addError(Element element, ErrorContent errorContent) {
        List<ErrorContent> listNewArrayList = this.errors.get(element);
        if (listNewArrayList == null) {
            listNewArrayList = Lists.newArrayList();
            this.errors.put(element, listNewArrayList);
        }
        listNewArrayList.add(errorContent);
    }

    public boolean isValid() {
        return this.errors.isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Element, List<ErrorContent>> entry : this.errors.entrySet()) {
            sb.append(entry.getKey().getElementId());
            sb.append(" { ");
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            Iterator<ErrorContent> it = entry.getValue().iterator();
            while (it.hasNext()) {
                arrayListNewArrayList.add(new ParseException(it.next()).toXmlErrorMessage());
            }
            sb.append(Join.join(", ", arrayListNewArrayList));
            sb.append(" }");
        }
        return sb.toString();
    }
}
