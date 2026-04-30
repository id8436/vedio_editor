package com.dropbox.core.stone;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class StoneSerializers {
    public static StoneSerializer<Long> uInt64() {
        return LongSerializer.INSTANCE;
    }

    public static StoneSerializer<Long> int64() {
        return LongSerializer.INSTANCE;
    }

    public static StoneSerializer<Long> uInt32() {
        return LongSerializer.INSTANCE;
    }

    public static StoneSerializer<Integer> int32() {
        return IntSerializer.INSTANCE;
    }

    public static StoneSerializer<Double> float64() {
        return DoubleSerializer.INSTANCE;
    }

    public static StoneSerializer<Float> float32() {
        return FloatSerializer.INSTANCE;
    }

    public static StoneSerializer<Boolean> boolean_() {
        return BooleanSerializer.INSTANCE;
    }

    public static StoneSerializer<byte[]> binary() {
        return ByteArraySerializer.INSTANCE;
    }

    public static StoneSerializer<String> string() {
        return StringSerializer.INSTANCE;
    }

    public static StoneSerializer<Date> timestamp() {
        return DateSerializer.INSTANCE;
    }

    public static StoneSerializer<Void> void_() {
        return VoidSerializer.INSTANCE;
    }

    public static <T> StoneSerializer<T> nullable(StoneSerializer<T> stoneSerializer) {
        return new NullableSerializer(stoneSerializer);
    }

    public static <T> StructSerializer<T> nullableStruct(StructSerializer<T> structSerializer) {
        return new NullableStructSerializer(structSerializer);
    }

    public static <T> StoneSerializer<List<T>> list(StoneSerializer<T> stoneSerializer) {
        return new ListSerializer(stoneSerializer);
    }

    public static <T> StoneSerializer<Map<String, T>> map(StoneSerializer<T> stoneSerializer) {
        return new MapSerializer(stoneSerializer);
    }

    final class LongSerializer extends StoneSerializer<Long> {
        public static final LongSerializer INSTANCE = new LongSerializer();

        private LongSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Long l, g gVar) throws IOException {
            gVar.a(l.longValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StoneSerializer
        public Long deserialize(k kVar) throws IOException {
            Long lValueOf = Long.valueOf(kVar.n());
            kVar.a();
            return lValueOf;
        }
    }

    final class IntSerializer extends StoneSerializer<Integer> {
        public static final IntSerializer INSTANCE = new IntSerializer();

        private IntSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Integer num, g gVar) throws IOException {
            gVar.c(num.intValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StoneSerializer
        public Integer deserialize(k kVar) throws IOException {
            Integer numValueOf = Integer.valueOf(kVar.m());
            kVar.a();
            return numValueOf;
        }
    }

    final class DoubleSerializer extends StoneSerializer<Double> {
        public static final DoubleSerializer INSTANCE = new DoubleSerializer();

        private DoubleSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Double d2, g gVar) throws IOException {
            gVar.a(d2.doubleValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StoneSerializer
        public Double deserialize(k kVar) throws IOException {
            Double dValueOf = Double.valueOf(kVar.q());
            kVar.a();
            return dValueOf;
        }
    }

    final class FloatSerializer extends StoneSerializer<Float> {
        public static final FloatSerializer INSTANCE = new FloatSerializer();

        private FloatSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Float f2, g gVar) throws IOException {
            gVar.a(f2.floatValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StoneSerializer
        public Float deserialize(k kVar) throws IOException {
            Float fValueOf = Float.valueOf(kVar.p());
            kVar.a();
            return fValueOf;
        }
    }

    final class BooleanSerializer extends StoneSerializer<Boolean> {
        public static final BooleanSerializer INSTANCE = new BooleanSerializer();

        private BooleanSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Boolean bool, g gVar) throws IOException {
            gVar.a(bool.booleanValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StoneSerializer
        public Boolean deserialize(k kVar) throws IOException {
            Boolean boolValueOf = Boolean.valueOf(kVar.s());
            kVar.a();
            return boolValueOf;
        }
    }

    final class ByteArraySerializer extends StoneSerializer<byte[]> {
        public static final ByteArraySerializer INSTANCE = new ByteArraySerializer();

        private ByteArraySerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(byte[] bArr, g gVar) throws IOException {
            gVar.a(bArr);
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public byte[] deserialize(k kVar) throws IOException {
            byte[] bArrT = kVar.t();
            kVar.a();
            return bArrT;
        }
    }

    final class StringSerializer extends StoneSerializer<String> {
        public static final StringSerializer INSTANCE = new StringSerializer();

        private StringSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(String str, g gVar) throws IOException {
            gVar.b(str);
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public String deserialize(k kVar) throws IOException {
            String stringValue = getStringValue(kVar);
            kVar.a();
            return stringValue;
        }
    }

    final class DateSerializer extends StoneSerializer<Date> {
        public static final DateSerializer INSTANCE = new DateSerializer();

        private DateSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Date date, g gVar) throws IOException {
            gVar.b(Util.formatTimestamp(date));
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public Date deserialize(k kVar) throws IOException {
            String stringValue = getStringValue(kVar);
            kVar.a();
            try {
                return Util.parseTimestamp(stringValue);
            } catch (ParseException e2) {
                throw new j(kVar, "Malformed timestamp: '" + stringValue + "'", e2);
            }
        }
    }

    final class VoidSerializer extends StoneSerializer<Void> {
        public static final VoidSerializer INSTANCE = new VoidSerializer();

        private VoidSerializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Void r1, g gVar) throws IOException {
            gVar.g();
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public Void deserialize(k kVar) throws IOException {
            skipValue(kVar);
            return null;
        }
    }

    final class NullableSerializer<T> extends StoneSerializer<T> {
        private final StoneSerializer<T> underlying;

        public NullableSerializer(StoneSerializer<T> stoneSerializer) {
            this.underlying = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(T t, g gVar) throws IOException {
            if (t == null) {
                gVar.g();
            } else {
                this.underlying.serialize(t, gVar);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public T deserialize(k kVar) throws IOException {
            if (kVar.c() != o.VALUE_NULL) {
                return this.underlying.deserialize(kVar);
            }
            kVar.a();
            return null;
        }
    }

    final class NullableStructSerializer<T> extends StructSerializer<T> {
        private final StructSerializer<T> underlying;

        public NullableStructSerializer(StructSerializer<T> structSerializer) {
            this.underlying = structSerializer;
        }

        @Override // com.dropbox.core.stone.StructSerializer, com.dropbox.core.stone.StoneSerializer
        public void serialize(T t, g gVar) throws IOException {
            if (t == null) {
                gVar.g();
            } else {
                this.underlying.serialize(t, gVar);
            }
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(T t, g gVar, boolean z) throws IOException {
            if (t == null) {
                gVar.g();
            } else {
                this.underlying.serialize(t, gVar, z);
            }
        }

        @Override // com.dropbox.core.stone.StructSerializer, com.dropbox.core.stone.StoneSerializer
        public T deserialize(k kVar) throws IOException {
            if (kVar.c() != o.VALUE_NULL) {
                return this.underlying.deserialize(kVar);
            }
            kVar.a();
            return null;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public T deserialize(k kVar, boolean z) throws IOException {
            if (kVar.c() != o.VALUE_NULL) {
                return this.underlying.deserialize(kVar, z);
            }
            kVar.a();
            return null;
        }
    }

    final class ListSerializer<T> extends StoneSerializer<List<T>> {
        private final StoneSerializer<T> underlying;

        public ListSerializer(StoneSerializer<T> stoneSerializer) {
            this.underlying = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(List<T> list, g gVar) throws IOException {
            gVar.b(list.size());
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                this.underlying.serialize(it.next(), gVar);
            }
            gVar.d();
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public List<T> deserialize(k kVar) throws IOException {
            expectStartArray(kVar);
            ArrayList arrayList = new ArrayList();
            while (kVar.c() != o.END_ARRAY) {
                arrayList.add(this.underlying.deserialize(kVar));
            }
            expectEndArray(kVar);
            return arrayList;
        }
    }

    final class MapSerializer<T> extends StoneSerializer<Map<String, T>> {
        private final StoneSerializer<T> underlying;

        public MapSerializer(StoneSerializer<T> stoneSerializer) {
            this.underlying = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(Map<String, T> map, g gVar) throws IOException {
            gVar.b(map.toString());
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public Map<String, T> deserialize(k kVar) throws IOException {
            HashMap map = new HashMap();
            expectStartObject(kVar);
            while (kVar.c() == o.FIELD_NAME) {
                String strD = kVar.d();
                kVar.a();
                map.put(strD, this.underlying.deserialize(kVar));
            }
            expectEndObject(kVar);
            return map;
        }
    }
}
