package com.google.api.gbase.client;

import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public class Group {
    private Multimap<String, GoogleBaseAttribute> subAttributes = HashMultimap.create();

    public Group(Collection<GoogleBaseAttribute> collection) {
        for (GoogleBaseAttribute googleBaseAttribute : collection) {
            this.subAttributes.put(googleBaseAttribute.getName(), googleBaseAttribute);
        }
    }

    public GoogleBaseAttribute getSubAttribute(String str) {
        if (!this.subAttributes.containsKey(str) || this.subAttributes.get(str).isEmpty()) {
            return null;
        }
        return this.subAttributes.get(str).iterator().next();
    }

    public Collection<? extends GoogleBaseAttribute> getSubAttributes(String str) {
        return this.subAttributes.containsKey(str) ? this.subAttributes.get(str) : Collections.emptySet();
    }

    public Multimap<String, GoogleBaseAttribute> getAllSubAttributes() {
        return HashMultimap.create(this.subAttributes);
    }

    public int subAttributesSize() {
        return this.subAttributes.size();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        for (String str : this.subAttributes.keySet()) {
            for (GoogleBaseAttribute googleBaseAttribute : this.subAttributes.get(str)) {
                sb.append(str).append("(").append(googleBaseAttribute.getType()).append("): ").append(googleBaseAttribute.getValueAsString()).append(", ");
            }
        }
        sb.delete(sb.length() - 2, sb.length() - 1);
        sb.append("]");
        return sb.toString();
    }
}
