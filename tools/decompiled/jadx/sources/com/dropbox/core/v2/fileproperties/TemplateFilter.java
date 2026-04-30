package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class TemplateFilter {
    public static final TemplateFilter FILTER_NONE = new TemplateFilter().withTag(Tag.FILTER_NONE);
    public static final TemplateFilter OTHER = new TemplateFilter().withTag(Tag.OTHER);
    private Tag _tag;
    private List<String> filterSomeValue;

    public enum Tag {
        FILTER_NONE,
        FILTER_SOME,
        OTHER
    }

    private TemplateFilter() {
    }

    private TemplateFilter withTag(Tag tag) {
        TemplateFilter templateFilter = new TemplateFilter();
        templateFilter._tag = tag;
        return templateFilter;
    }

    private TemplateFilter withTagAndFilterSome(Tag tag, List<String> list) {
        TemplateFilter templateFilter = new TemplateFilter();
        templateFilter._tag = tag;
        templateFilter.filterSomeValue = list;
        return templateFilter;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isFilterNone() {
        return this._tag == Tag.FILTER_NONE;
    }

    public boolean isFilterSome() {
        return this._tag == Tag.FILTER_SOME;
    }

    public static TemplateFilter filterSome(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List has fewer than 1 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("Stringan item in list is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("Stringan item in list does not match pattern");
            }
        }
        return new TemplateFilter().withTagAndFilterSome(Tag.FILTER_SOME, list);
    }

    public List<String> getFilterSomeValue() {
        if (this._tag != Tag.FILTER_SOME) {
            throw new IllegalStateException("Invalid tag: required Tag.FILTER_SOME, but was Tag." + this._tag.name());
        }
        return this.filterSomeValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.filterSomeValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TemplateFilter)) {
            return false;
        }
        TemplateFilter templateFilter = (TemplateFilter) obj;
        if (this._tag != templateFilter._tag) {
            return false;
        }
        switch (this._tag) {
            case FILTER_NONE:
                return true;
            case FILTER_SOME:
                return this.filterSomeValue == templateFilter.filterSomeValue || this.filterSomeValue.equals(templateFilter.filterSomeValue);
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<TemplateFilter> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TemplateFilter templateFilter, g gVar) throws IOException {
            switch (templateFilter.tag()) {
                case FILTER_NONE:
                    gVar.b("filter_none");
                    break;
                case FILTER_SOME:
                    gVar.e();
                    writeTag("filter_some", gVar);
                    gVar.a("filter_some");
                    StoneSerializers.list(StoneSerializers.string()).serialize(templateFilter.filterSomeValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public TemplateFilter deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TemplateFilter templateFilterFilterSome;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("filter_none".equals(tag)) {
                templateFilterFilterSome = TemplateFilter.FILTER_NONE;
            } else if ("filter_some".equals(tag)) {
                expectField("filter_some", kVar);
                templateFilterFilterSome = TemplateFilter.filterSome((List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar));
            } else {
                templateFilterFilterSome = TemplateFilter.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return templateFilterFilterSome;
        }
    }
}
