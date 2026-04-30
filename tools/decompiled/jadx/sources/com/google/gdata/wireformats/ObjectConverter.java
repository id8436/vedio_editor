package com.google.gdata.wireformats;

import com.google.common.collect.MapMaker;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.DateTime;
import com.google.gdata.util.ParseException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ObjectConverter<T> {
    private static final ConcurrentMap<Class<?>, ObjectConverter<?>> CONVERTERS = new MapMaker().makeMap();

    /* JADX INFO: renamed from: convertValue */
    public abstract T convertValue2(String str, Class<? extends T> cls) throws ParseException;

    static {
        addConverter(DateTime.class, new DateTimeConverter());
        addConverter(Enum.class, new EnumConverter());
        addConverter(Boolean.class, new BooleanConverter());
    }

    public static <V> void addConverter(Class<V> cls, ObjectConverter<V> objectConverter) {
        CONVERTERS.put(cls, objectConverter);
    }

    public static <V> V getValue(Object obj, Class<V> cls) throws ParseException {
        if (obj instanceof String) {
            return (V) getValue((String) obj, (Class) cls);
        }
        if (obj == null || cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        throw new ParseException("Cannot convert value " + obj + " of type " + obj.getClass() + " to " + cls);
    }

    public static <V> V getValue(String str, Class<V> cls) throws ParseException {
        V vNewInstance;
        if (str == null || cls.isInstance(str)) {
            return cls.cast(str);
        }
        try {
            ObjectConverter handler = getHandler(cls);
            if (handler != null) {
                vNewInstance = (V) handler.convertValue2(str, cls);
            } else {
                vNewInstance = cls.getConstructor(String.class).newInstance(str);
            }
            return vNewInstance;
        } catch (IllegalAccessException e2) {
            throw new ParseException(e2);
        } catch (IllegalArgumentException e3) {
            throw new ParseException(e3);
        } catch (InstantiationException e4) {
            throw new ParseException(e4);
        } catch (NoSuchMethodException e5) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.missingConverter);
            parseException.setInternalReason("No converter for type " + cls);
            throw parseException;
        } catch (InvocationTargetException e6) {
            throw new ParseException(e6.getTargetException());
        }
    }

    private static <V> ObjectConverter<V> getHandler(Class<? extends V> cls) {
        ObjectConverter<V> objectConverter = (ObjectConverter) CONVERTERS.get(cls);
        if (objectConverter == null && cls.isEnum()) {
            return (ObjectConverter) CONVERTERS.get(Enum.class);
        }
        return objectConverter;
    }

    class DateTimeConverter extends ObjectConverter<DateTime> {
        private DateTimeConverter() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gdata.wireformats.ObjectConverter
        /* JADX INFO: renamed from: convertValue */
        public DateTime convertValue2(String str, Class<? extends DateTime> cls) throws ParseException {
            try {
                return DateTime.parseDateTimeChoice(str);
            } catch (NumberFormatException e2) {
                throw new ParseException(CoreErrorDomain.ERR.invalidDatetime, e2);
            }
        }
    }

    class EnumConverter extends ObjectConverter<Enum> {
        private EnumConverter() {
        }

        @Override // com.google.gdata.wireformats.ObjectConverter
        /* JADX INFO: renamed from: convertValue, reason: merged with bridge method [inline-methods] */
        public Enum convertValue2(String str, Class<? extends Enum> cls) throws ParseException {
            if (str == null) {
                return null;
            }
            Enum enumValueOf = Enum.valueOf(cls, str.toUpperCase());
            if (enumValueOf == null) {
                throw new ParseException(CoreErrorDomain.ERR.invalidEnumValue.withInternalReason("No such enum of type " + cls + " named " + str.toUpperCase()));
            }
            return enumValueOf;
        }
    }

    class BooleanConverter extends ObjectConverter<Boolean> {
        private BooleanConverter() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gdata.wireformats.ObjectConverter
        /* JADX INFO: renamed from: convertValue */
        public Boolean convertValue2(String str, Class<? extends Boolean> cls) throws ParseException {
            if (str == null) {
                return null;
            }
            if ("true".equals(str) || "1".equals(str) || "ture".equals(str)) {
                return Boolean.TRUE;
            }
            if ("false".equals(str) || "0".equals(str)) {
                return Boolean.FALSE;
            }
            throw new ParseException(CoreErrorDomain.ERR.invalidBooleanAttribute.withInternalReason("Invalid boolean value: '" + str + "'"));
        }
    }

    public class MappedEnumConverter<T> extends ObjectConverter<T> {
        private final Map<String, T> map;

        public MappedEnumConverter(Map<String, T> map) {
            this.map = map;
        }

        @Override // com.google.gdata.wireformats.ObjectConverter
        /* JADX INFO: renamed from: convertValue */
        public T convertValue2(String str, Class<? extends T> cls) throws ParseException {
            T t = this.map.get(str);
            if (t == null) {
                throw new ParseException(CoreErrorDomain.ERR.invalidEnumValue.withInternalReason("No such pseudo enum value of type " + cls + " named " + str));
            }
            return t;
        }
    }
}
