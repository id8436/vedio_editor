package com.google.gdata.data;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.util.ParseException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class AttributeHelper {
    protected final Map<String, String> attrs = new HashMap();
    private Set<String> dups = new HashSet();
    private boolean contentConsumed = false;
    private String content = null;

    public interface EnumToAttributeValue<T extends Enum<T>> {
        String getAttributeValue(T t);
    }

    public AttributeHelper(Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (attributes.getURI(i).length() != 0) {
                String localName = attributes.getLocalName(i);
                if (this.attrs.put(localName, attributes.getValue(i)) != null) {
                    this.dups.add(localName);
                }
            } else {
                this.attrs.put(attributes.getQName(i), attributes.getValue(i));
            }
        }
    }

    public String consumeContent(boolean z) throws ParseException {
        return consume(null, z);
    }

    public String consume(String str, boolean z) throws ParseException {
        if (str == null) {
            if (this.content == null && z) {
                throw new ParseException(CoreErrorDomain.ERR.missingRequiredContent);
            }
            this.contentConsumed = true;
            return this.content;
        }
        String str2 = this.attrs.get(str);
        if (str2 == null) {
            if (z) {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.missingAttribute);
                parseException.setInternalReason("Missing attribute: '" + str + "'");
                throw parseException;
            }
            return null;
        }
        this.attrs.remove(str);
        return str2;
    }

    public byte consumeByte(String str, boolean z, byte b2) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return b2;
        }
        try {
            return Byte.parseByte(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidByteAttribute);
            parseException.setInternalReason("Invalid byte value for attribute: '" + str + "'");
            throw parseException;
        }
    }

    public byte consumeByte(String str, boolean z) throws ParseException {
        return consumeByte(str, z, (byte) 0);
    }

    public short consumeShort(String str, boolean z, short s) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return s;
        }
        try {
            return Short.parseShort(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidShortAttribute);
            parseException.setInternalReason("Invalid short value for attribute: '" + str + "'");
            throw parseException;
        }
    }

    public short consumeShort(String str, boolean z) throws ParseException {
        return consumeShort(str, z, (short) 0);
    }

    public int consumeInteger(String str, boolean z, int i) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return i;
        }
        try {
            return Integer.parseInt(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidIntegerAttribute);
            parseException.setInternalReason("Invalid integer value for attribute: '" + str + "'");
            throw parseException;
        }
    }

    public int consumeInteger(String str, boolean z) throws ParseException {
        return consumeInteger(str, z, 0);
    }

    public long consumeLong(String str, boolean z, long j) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return j;
        }
        try {
            return Long.parseLong(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidLongAttribute, e2);
            parseException.setInternalReason("Invalid long value for attribute: '" + str + "'");
            throw parseException;
        }
    }

    public long consumeLong(String str, boolean z) throws ParseException {
        return consumeLong(str, z, 0L);
    }

    public BigInteger consumeBigInteger(String str, boolean z, BigInteger bigInteger) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return bigInteger;
        }
        try {
            return new BigInteger(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidBigIntegerAttribute);
            parseException.setInternalReason("Invalid big integer value for attribute: '" + str + "'");
            throw parseException;
        }
    }

    public BigInteger consumeBigInteger(String str, boolean z) throws ParseException {
        return consumeBigInteger(str, z, BigInteger.ZERO);
    }

    public BigDecimal consumeBigDecimal(String str, boolean z, BigDecimal bigDecimal) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return bigDecimal;
        }
        try {
            return new BigDecimal(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidBigDecimalAttribute);
            parseException.setInternalReason("Invalid big decimal value for attribute: '" + str + "'");
            throw parseException;
        }
    }

    public BigDecimal consumeBigDecimal(String str, boolean z) throws ParseException {
        return consumeBigDecimal(str, z, BigDecimal.ZERO);
    }

    public double consumeDouble(String str, boolean z, double d2) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume != null) {
            if ("INF".equals(strConsume)) {
                return Double.POSITIVE_INFINITY;
            }
            if ("-INF".equals(strConsume)) {
                return Double.NEGATIVE_INFINITY;
            }
            try {
                return Double.parseDouble(strConsume);
            } catch (NumberFormatException e2) {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidDoubleAttribute, e2);
                parseException.setInternalReason("Invalid double value for attribute: '" + str + "'");
                throw parseException;
            }
        }
        return d2;
    }

    public double consumeDouble(String str, boolean z) throws ParseException {
        return consumeDouble(str, z, 0.0d);
    }

    public float consumeFloat(String str, boolean z, float f2) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume != null) {
            if ("INF".equals(strConsume)) {
                return Float.POSITIVE_INFINITY;
            }
            if ("-INF".equals(strConsume)) {
                return Float.NEGATIVE_INFINITY;
            }
            try {
                return Float.parseFloat(strConsume);
            } catch (NumberFormatException e2) {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidFloatAttribute, e2);
                parseException.setInternalReason("Invalid float value for attribute: '" + str + "'");
                throw parseException;
            }
        }
        return f2;
    }

    public float consumeFloat(String str, boolean z) throws ParseException {
        return consumeFloat(str, z, 0.0f);
    }

    public boolean consumeBoolean(String str, boolean z, boolean z2) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume != null) {
            if ("true".equals(strConsume) || "1".equals(strConsume)) {
                return true;
            }
            if ("false".equals(strConsume) || "0".equals(strConsume)) {
                return false;
            }
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidBooleanAttribute);
            parseException.setInternalReason("Invalid boolean value for attribute: '" + str + "'");
            throw parseException;
        }
        return z2;
    }

    public boolean consumeBoolean(String str, boolean z) throws ParseException {
        return consumeBoolean(str, z, false);
    }

    public DateTime consumeDateTime(String str, boolean z) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return null;
        }
        try {
            return DateTime.parseDateTimeChoice(strConsume);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidDatetime, e2);
            parseException.setInternalReason("Badly formatted datetime in attribute: " + str);
            throw parseException;
        }
    }

    public class LowerCaseEnumToAttributeValue<T extends Enum<T>> implements EnumToAttributeValue<T> {
        @Override // com.google.gdata.data.AttributeHelper.EnumToAttributeValue
        public String getAttributeValue(T t) {
            return t.name().toLowerCase();
        }
    }

    public <T extends Enum<T>> T consumeEnum(String str, boolean z, Class<T> cls, T t, EnumToAttributeValue<T> enumToAttributeValue) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume != null) {
            T[] enumConstants = cls.getEnumConstants();
            int length = enumConstants.length;
            for (int i = 0; i < length; i++) {
                t = enumConstants[i];
                if (!enumToAttributeValue.getAttributeValue(t).equals(strConsume)) {
                }
            }
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidAttributeValue);
            parseException.setInternalReason("Invalid value for attribute : '" + str + "'");
            throw parseException;
        }
        return t;
    }

    public <T extends Enum<T>> T consumeEnum(String str, boolean z, Class<T> cls, T t) throws ParseException {
        String strConsume = consume(str, z);
        if (strConsume == null) {
            return t;
        }
        try {
            return (T) Enum.valueOf(cls, strConsume.toUpperCase());
        } catch (IllegalArgumentException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidAttributeValue, e2);
            parseException.setInternalReason("Invalid value for attribute : '" + str + "'");
            throw parseException;
        }
    }

    public <T extends Enum<T>> T consumeEnum(String str, boolean z, Class<T> cls) throws ParseException {
        return (T) consumeEnum(str, z, cls, null);
    }

    public void assertAllConsumed() throws ParseException {
        StringBuffer stringBuffer = new StringBuffer();
        if (!this.attrs.isEmpty()) {
            stringBuffer.append("Unknown attribute");
            if (this.attrs.size() > 1) {
                stringBuffer.append('s');
            }
            stringBuffer.append(':');
            for (String str : this.attrs.keySet()) {
                stringBuffer.append(" '");
                stringBuffer.append(str);
                stringBuffer.append("' ");
            }
        }
        if (!this.dups.isEmpty()) {
            stringBuffer.append("Duplicate attribute");
            if (this.dups.size() > 1) {
                stringBuffer.append('s');
            }
            stringBuffer.append(':');
            for (String str2 : this.dups) {
                stringBuffer.append(" '");
                stringBuffer.append(str2);
                stringBuffer.append("' ");
            }
        }
        if (!this.contentConsumed && this.content != null && this.content.length() != 0) {
            stringBuffer.append("Unexpected text content ");
        }
        if (stringBuffer.length() != 0) {
            throw new ParseException(stringBuffer.toString());
        }
    }

    void setContent(String str) {
        this.content = str == null ? null : str.trim();
    }
}
