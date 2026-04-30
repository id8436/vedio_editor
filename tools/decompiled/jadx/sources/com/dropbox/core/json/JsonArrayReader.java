package com.dropbox.core.json;

import com.d.a.a.k;
import com.dropbox.core.util.Collector;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JsonArrayReader<T, L> extends JsonReader<L> {
    public final Collector<T, ? extends L> collector;
    public final JsonReader<? extends T> elementReader;

    public JsonArrayReader(JsonReader<? extends T> jsonReader, Collector<T, ? extends L> collector) {
        this.elementReader = jsonReader;
        this.collector = collector;
    }

    public static <T> JsonArrayReader<T, List<T>> mk(JsonReader<? extends T> jsonReader) {
        return new JsonArrayReader<>(jsonReader, new Collector.ArrayListCollector());
    }

    public static <T, L> JsonArrayReader<T, L> mk(JsonReader<? extends T> jsonReader, Collector<T, ? extends L> collector) {
        return new JsonArrayReader<>(jsonReader, collector);
    }

    @Override // com.dropbox.core.json.JsonReader
    public L read(k kVar) throws JsonReadException, IOException {
        return (L) read(this.elementReader, this.collector, kVar);
    }

    public static <T, L> L read(JsonReader<? extends T> jsonReader, Collector<T, ? extends L> collector, k kVar) throws JsonReadException, IOException {
        expectArrayStart(kVar);
        int i = 0;
        while (!isArrayEnd(kVar)) {
            try {
                collector.add(jsonReader.read(kVar));
                i++;
            } catch (JsonReadException e2) {
                throw e2.addArrayContext(i);
            }
        }
        kVar.a();
        return collector.finish();
    }
}
