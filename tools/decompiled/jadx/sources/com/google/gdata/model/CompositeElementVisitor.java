package com.google.gdata.model;

import com.google.gdata.model.ElementVisitor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class CompositeElementVisitor implements ElementVisitor {
    private final List<ElementVisitor> visitors;
    private final Map<ElementVisitor, ElementVisitor.StoppedException> stoppedVisitors = new HashMap();
    private final Map<ElementVisitor, Element> ignoringVisitors = new HashMap();

    public CompositeElementVisitor(ElementVisitor... elementVisitorArr) {
        this.visitors = new ArrayList(elementVisitorArr.length);
        for (ElementVisitor elementVisitor : elementVisitorArr) {
            this.visitors.add(elementVisitor);
        }
    }

    public void addVisitor(ElementVisitor elementVisitor) {
        this.visitors.add(elementVisitor);
    }

    public List<ElementVisitor> getVisitors() {
        return this.visitors;
    }

    public ElementVisitor.StoppedException getStoppedException(ElementVisitor elementVisitor) {
        return this.stoppedVisitors.get(elementVisitor);
    }

    @Override // com.google.gdata.model.ElementVisitor
    public boolean visit(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws ElementVisitor.StoppedException {
        boolean z;
        boolean z2 = false;
        for (ElementVisitor elementVisitor : this.visitors) {
            if (!this.ignoringVisitors.containsKey(elementVisitor)) {
                try {
                    if (!elementVisitor.visit(element, element2, elementMetadata)) {
                        this.ignoringVisitors.put(elementVisitor, element2);
                    }
                    z = z2;
                } catch (ElementVisitor.StoppedException e2) {
                    this.stoppedVisitors.put(elementVisitor, e2);
                    z = true;
                }
                z2 = z;
            }
        }
        if (z2) {
            this.visitors.removeAll(this.stoppedVisitors.keySet());
            if (this.visitors.isEmpty()) {
                throw new ElementVisitor.StoppedException("All visitors stopped");
            }
        }
        return this.visitors.size() != this.ignoringVisitors.size();
    }

    @Override // com.google.gdata.model.ElementVisitor
    public void visitComplete(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws ElementVisitor.StoppedException {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        for (Map.Entry<ElementVisitor, Element> entry : this.ignoringVisitors.entrySet()) {
            if (entry.getValue() == element2) {
                arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList.add(entry.getKey());
            } else {
                arrayList = arrayList2;
            }
            arrayList2 = arrayList;
        }
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                this.ignoringVisitors.remove((ElementVisitor) it.next());
            }
        }
        for (ElementVisitor elementVisitor : this.visitors) {
            if (!this.ignoringVisitors.containsKey(elementVisitor)) {
                elementVisitor.visitComplete(element, element2, elementMetadata);
            }
        }
    }
}
