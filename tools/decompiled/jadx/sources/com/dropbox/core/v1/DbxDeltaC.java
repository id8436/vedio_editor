package com.dropbox.core.v1;

import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DbxDeltaC<C> extends Dumpable {
    public final String cursor;
    public final C entries;
    public final boolean hasMore;
    public final boolean reset;

    public DbxDeltaC(boolean z, C c2, String str, boolean z2) {
        this.reset = z;
        this.entries = c2;
        this.cursor = str;
        this.hasMore = z2;
    }

    @Override // com.dropbox.core.util.Dumpable
    protected void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.f("reset").v(this.reset);
        dumpWriter.f("cursor").v(this.cursor);
        dumpWriter.f("entries").v(this.hasMore);
    }

    public final class Reader<C, MD extends Dumpable> extends JsonReader<DbxDeltaC<C>> {
        private static final JsonReader.FieldMapping FM;
        private static final int FM_cursor = 2;
        private static final int FM_entries = 1;
        private static final int FM_has_more = 3;
        private static final int FM_reset = 0;
        public final Collector<Entry<MD>, C> entryCollector;
        public final JsonReader<MD> metadataReader;

        public Reader(JsonReader<MD> jsonReader, Collector<Entry<MD>, C> collector) {
            this.metadataReader = jsonReader;
            this.entryCollector = collector;
        }

        @Override // com.dropbox.core.json.JsonReader
        public DbxDeltaC<C> read(k kVar) throws JsonReadException, IOException {
            return read(kVar, this.metadataReader, this.entryCollector);
        }

        public static <C, MD extends Dumpable> DbxDeltaC<C> read(k kVar, JsonReader<MD> jsonReader, Collector<Entry<MD>, C> collector) throws JsonReadException, IOException {
            Boolean field;
            String str;
            Object obj;
            Boolean field2;
            Boolean bool = null;
            i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
            String str2 = null;
            Object obj2 = null;
            Boolean bool2 = null;
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                JsonReader.nextToken(kVar);
                int i = FM.get(strD);
                if (i == -1) {
                    try {
                        JsonReader.skipValue(kVar);
                    } catch (JsonReadException e2) {
                        throw e2.addFieldContext(strD);
                    }
                } else {
                    switch (i) {
                        case 0:
                            Boolean bool3 = bool;
                            str = str2;
                            obj = obj2;
                            field2 = JsonReader.BooleanReader.readField(kVar, strD, bool2);
                            field = bool3;
                            break;
                        case 1:
                            Object field3 = JsonArrayReader.mk(new Entry.Reader(jsonReader), collector).readField(kVar, strD, obj2);
                            field2 = bool2;
                            String str3 = str2;
                            obj = field3;
                            field = bool;
                            str = str3;
                            break;
                        case 2:
                            String field4 = JsonReader.StringReader.readField(kVar, strD, str2);
                            obj = obj2;
                            field2 = bool2;
                            Boolean bool4 = bool;
                            str = field4;
                            field = bool4;
                            break;
                        case 3:
                            field = JsonReader.BooleanReader.readField(kVar, strD, bool);
                            str = str2;
                            obj = obj2;
                            field2 = bool2;
                            break;
                        default:
                            throw new AssertionError("bad index: " + i + ", field = \"" + strD + "\"");
                    }
                    bool2 = field2;
                    obj2 = obj;
                    str2 = str;
                    bool = field;
                }
            }
            JsonReader.expectObjectEnd(kVar);
            if (bool2 == null) {
                throw new JsonReadException("missing field \"path\"", iVarExpectObjectStart);
            }
            if (obj2 == null) {
                throw new JsonReadException("missing field \"entries\"", iVarExpectObjectStart);
            }
            if (str2 == null) {
                throw new JsonReadException("missing field \"cursor\"", iVarExpectObjectStart);
            }
            if (bool == null) {
                throw new JsonReadException("missing field \"has_more\"", iVarExpectObjectStart);
            }
            return new DbxDeltaC<>(bool2.booleanValue(), obj2, str2, bool.booleanValue());
        }

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("reset", 0);
            builder.add("entries", 1);
            builder.add("cursor", 2);
            builder.add("has_more", 3);
            FM = builder.build();
        }
    }

    public final class Entry<MD extends Dumpable> extends Dumpable {
        public final String lcPath;
        public final MD metadata;

        public Entry(String str, MD md) {
            this.lcPath = str;
            this.metadata = md;
        }

        @Override // com.dropbox.core.util.Dumpable
        protected void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.f("lcPath").v(this.lcPath);
            dumpWriter.f("metadata").v(this.metadata);
        }

        public final class Reader<MD extends Dumpable> extends JsonReader<Entry<MD>> {
            public final JsonReader<MD> metadataReader;

            public Reader(JsonReader<MD> jsonReader) {
                this.metadataReader = jsonReader;
            }

            @Override // com.dropbox.core.json.JsonReader
            public Entry<MD> read(k kVar) throws JsonReadException, IOException {
                return read(kVar, this.metadataReader);
            }

            public static <MD extends Dumpable> Entry<MD> read(k kVar, JsonReader<MD> jsonReader) throws JsonReadException, IOException {
                i iVarExpectArrayStart = JsonReader.expectArrayStart(kVar);
                if (JsonReader.isArrayEnd(kVar)) {
                    throw new JsonReadException("expecting a two-element array of [path, metadata], found a zero-element array", iVarExpectArrayStart);
                }
                try {
                    String str = JsonReader.StringReader.read(kVar);
                    if (JsonReader.isArrayEnd(kVar)) {
                        throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array", iVarExpectArrayStart);
                    }
                    try {
                        MD optional = jsonReader.readOptional(kVar);
                        if (!JsonReader.isArrayEnd(kVar)) {
                            throw new JsonReadException("expecting a two-element array of [path, metadata], found more than two elements", iVarExpectArrayStart);
                        }
                        kVar.a();
                        return new Entry<>(str, optional);
                    } catch (JsonReadException e2) {
                        throw e2.addArrayContext(1);
                    }
                } catch (JsonReadException e3) {
                    throw e3.addArrayContext(0);
                }
            }
        }
    }
}
