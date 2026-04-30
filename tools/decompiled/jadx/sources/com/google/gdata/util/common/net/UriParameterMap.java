package com.google.gdata.util.common.net;

import com.google.common.collect.ForwardingMultimap;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Multimaps;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.httputil.FormUrlDecoder;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class UriParameterMap extends ForwardingMultimap<String, String> implements ListMultimap<String, String>, Serializable, Cloneable {
    public static final UriParameterMap EMPTY_MAP = new UriParameterMap(ImmutableListMultimap.of());
    private static final long serialVersionUID = -3053773769157973706L;
    private final ListMultimap<String, String> delegate;

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((String) obj, (Iterable<? extends String>) iterable);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ List replaceValues(Object obj, Iterable iterable) {
        return replaceValues((String) obj, (Iterable<? extends String>) iterable);
    }

    private UriParameterMap(ListMultimap<String, String> listMultimap) {
        this.delegate = listMultimap;
    }

    public UriParameterMap() {
        this(LinkedListMultimap.create());
    }

    public static UriParameterMap parse(String str) {
        return parse(str, UriEncoder.DEFAULT_ENCODING);
    }

    public static UriParameterMap parse(String str, Charset charset) {
        Preconditions.checkNotNull(str);
        UriParameterMap uriParameterMap = new UriParameterMap();
        uriParameterMap.merge(str, charset);
        return uriParameterMap;
    }

    public static UriParameterMap unmodifiableMap(UriParameterMap uriParameterMap) {
        return new UriParameterMap(Multimaps.unmodifiableListMultimap(uriParameterMap.delegate()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
    public ListMultimap<String, String> delegate() {
        return this.delegate;
    }

    void merge(String str, Charset charset) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(charset);
        FormUrlDecoder.parseWithCallback(str, charset.name(), new FormUrlDecoder.Callback() { // from class: com.google.gdata.util.common.net.UriParameterMap.1
            @Override // com.google.gdata.util.httputil.FormUrlDecoder.Callback
            public void handleParameter(String str2, String str3) {
                UriParameterMap.this.put(str2, str3);
            }
        });
    }

    public String getFirst(String str) {
        Preconditions.checkNotNull(str);
        List<String> list = get(str);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public void appendTo(StringBuilder sb, Charset charset) {
        try {
            appendTo((Appendable) sb, charset);
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public void appendTo(Appendable appendable, Charset charset) throws IOException {
        Preconditions.checkNotNull(appendable);
        Iterator<Map.Entry<String, String>> it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            appendable.append(UriEncoder.encode(next.getKey(), charset));
            if (!"".equals(next.getValue())) {
                appendable.append(Engagement.Comparison.EQ);
                appendable.append(UriEncoder.encode(next.getValue(), charset));
            }
            if (it.hasNext()) {
                appendable.append("&");
            }
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public UriParameterMap m8clone() {
        return new UriParameterMap(LinkedListMultimap.create(delegate()));
    }

    public String toString(Charset charset) {
        StringBuilder sb = new StringBuilder();
        appendTo(sb, charset);
        return sb.toString();
    }

    public Map<String, String[]> copyToArrayMap() {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (Map.Entry<String, Collection<String>> entry : delegate().asMap().entrySet()) {
            Collection<String> value = entry.getValue();
            builder.put(entry.getKey(), value.toArray(new String[value.size()]));
        }
        return builder.build();
    }

    @Override // com.google.common.collect.ForwardingObject
    public String toString() {
        return toString(UriEncoder.DEFAULT_ENCODING);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public List<String> get(String str) {
        return delegate().get(str);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public List<String> removeAll(Object obj) {
        return delegate().removeAll(obj);
    }

    public List<String> replaceValues(String str, Iterable<? extends String> iterable) {
        return delegate().replaceValues(str, iterable);
    }
}
