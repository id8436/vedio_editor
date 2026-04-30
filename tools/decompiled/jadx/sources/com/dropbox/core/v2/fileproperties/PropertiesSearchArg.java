package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertiesSearchQuery;
import com.dropbox.core.v2.fileproperties.TemplateFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class PropertiesSearchArg {
    protected final List<PropertiesSearchQuery> queries;
    protected final TemplateFilter templateFilter;

    public PropertiesSearchArg(List<PropertiesSearchQuery> list, TemplateFilter templateFilter) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'queries' is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List 'queries' has fewer than 1 items");
        }
        Iterator<PropertiesSearchQuery> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'queries' is null");
            }
        }
        this.queries = list;
        if (templateFilter == null) {
            throw new IllegalArgumentException("Required value for 'templateFilter' is null");
        }
        this.templateFilter = templateFilter;
    }

    public PropertiesSearchArg(List<PropertiesSearchQuery> list) {
        this(list, TemplateFilter.FILTER_NONE);
    }

    public List<PropertiesSearchQuery> getQueries() {
        return this.queries;
    }

    public TemplateFilter getTemplateFilter() {
        return this.templateFilter;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.queries, this.templateFilter});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PropertiesSearchArg propertiesSearchArg = (PropertiesSearchArg) obj;
            return (this.queries == propertiesSearchArg.queries || this.queries.equals(propertiesSearchArg.queries)) && (this.templateFilter == propertiesSearchArg.templateFilter || this.templateFilter.equals(propertiesSearchArg.templateFilter));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PropertiesSearchArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertiesSearchArg propertiesSearchArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("queries");
            StoneSerializers.list(PropertiesSearchQuery.Serializer.INSTANCE).serialize(propertiesSearchArg.queries, gVar);
            gVar.a("template_filter");
            TemplateFilter.Serializer.INSTANCE.serialize(propertiesSearchArg.templateFilter, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertiesSearchArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            TemplateFilter templateFilterDeserialize;
            List list;
            List list2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TemplateFilter templateFilter = TemplateFilter.FILTER_NONE;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("queries".equals(strD)) {
                        TemplateFilter templateFilter2 = templateFilter;
                        list = (List) StoneSerializers.list(PropertiesSearchQuery.Serializer.INSTANCE).deserialize(kVar);
                        templateFilterDeserialize = templateFilter2;
                    } else if ("template_filter".equals(strD)) {
                        templateFilterDeserialize = TemplateFilter.Serializer.INSTANCE.deserialize(kVar);
                        list = list2;
                    } else {
                        skipValue(kVar);
                        templateFilterDeserialize = templateFilter;
                        list = list2;
                    }
                    list2 = list;
                    templateFilter = templateFilterDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"queries\" missing.");
                }
                PropertiesSearchArg propertiesSearchArg = new PropertiesSearchArg(list2, templateFilter);
                if (!z) {
                    expectEndObject(kVar);
                }
                return propertiesSearchArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
