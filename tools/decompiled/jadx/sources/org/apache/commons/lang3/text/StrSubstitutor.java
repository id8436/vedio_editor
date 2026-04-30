package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
public class StrSubstitutor {
    public static final char DEFAULT_ESCAPE = '$';
    public static final StrMatcher DEFAULT_PREFIX = StrMatcher.stringMatcher("${");
    public static final StrMatcher DEFAULT_SUFFIX = StrMatcher.stringMatcher("}");
    private boolean enableSubstitutionInVariables;
    private char escapeChar;
    private StrMatcher prefixMatcher;
    private StrMatcher suffixMatcher;
    private StrLookup<?> variableResolver;

    public static <V> String replace(Object obj, Map<String, V> map) {
        return new StrSubstitutor(map).replace(obj);
    }

    public static <V> String replace(Object obj, Map<String, V> map, String str, String str2) {
        return new StrSubstitutor(map, str, str2).replace(obj);
    }

    public static String replace(Object obj, Properties properties) {
        if (properties == null) {
            return obj.toString();
        }
        HashMap map = new HashMap();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            map.put(str, properties.getProperty(str));
        }
        return replace(obj, map);
    }

    public static String replaceSystemProperties(Object obj) {
        return new StrSubstitutor(StrLookup.systemPropertiesLookup()).replace(obj);
    }

    public StrSubstitutor() {
        this((StrLookup<?>) null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public <V> StrSubstitutor(Map<String, V> map) {
        this((StrLookup<?>) StrLookup.mapLookup(map), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public <V> StrSubstitutor(Map<String, V> map, String str, String str2) {
        this((StrLookup<?>) StrLookup.mapLookup(map), str, str2, '$');
    }

    public <V> StrSubstitutor(Map<String, V> map, String str, String str2, char c2) {
        this((StrLookup<?>) StrLookup.mapLookup(map), str, str2, c2);
    }

    public StrSubstitutor(StrLookup<?> strLookup) {
        this(strLookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public StrSubstitutor(StrLookup<?> strLookup, String str, String str2, char c2) {
        setVariableResolver(strLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c2);
    }

    public StrSubstitutor(StrLookup<?> strLookup, StrMatcher strMatcher, StrMatcher strMatcher2, char c2) {
        setVariableResolver(strLookup);
        setVariablePrefixMatcher(strMatcher);
        setVariableSuffixMatcher(strMatcher2);
        setEscapeChar(c2);
    }

    public String replace(String str) {
        if (str == null) {
            return null;
        }
        StrBuilder strBuilder = new StrBuilder(str);
        return substitute(strBuilder, 0, str.length()) ? strBuilder.toString() : str;
    }

    public String replace(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(i2).append(str, i, i2);
        if (!substitute(strBuilderAppend, 0, i2)) {
            return str.substring(i, i + i2);
        }
        return strBuilderAppend.toString();
    }

    public String replace(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(cArr.length).append(cArr);
        substitute(strBuilderAppend, 0, cArr.length);
        return strBuilderAppend.toString();
    }

    public String replace(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(i2).append(cArr, i, i2);
        substitute(strBuilderAppend, 0, i2);
        return strBuilderAppend.toString();
    }

    public String replace(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(stringBuffer.length()).append(stringBuffer);
        substitute(strBuilderAppend, 0, strBuilderAppend.length());
        return strBuilderAppend.toString();
    }

    public String replace(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(i2).append(stringBuffer, i, i2);
        substitute(strBuilderAppend, 0, i2);
        return strBuilderAppend.toString();
    }

    public String replace(StrBuilder strBuilder) {
        if (strBuilder == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(strBuilder.length()).append(strBuilder);
        substitute(strBuilderAppend, 0, strBuilderAppend.length());
        return strBuilderAppend.toString();
    }

    public String replace(StrBuilder strBuilder, int i, int i2) {
        if (strBuilder == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder(i2).append(strBuilder, i, i2);
        substitute(strBuilderAppend, 0, i2);
        return strBuilderAppend.toString();
    }

    public String replace(Object obj) {
        if (obj == null) {
            return null;
        }
        StrBuilder strBuilderAppend = new StrBuilder().append(obj);
        substitute(strBuilderAppend, 0, strBuilderAppend.length());
        return strBuilderAppend.toString();
    }

    public boolean replaceIn(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return false;
        }
        return replaceIn(stringBuffer, 0, stringBuffer.length());
    }

    public boolean replaceIn(StringBuffer stringBuffer, int i, int i2) {
        if (stringBuffer == null) {
            return false;
        }
        StrBuilder strBuilderAppend = new StrBuilder(i2).append(stringBuffer, i, i2);
        if (!substitute(strBuilderAppend, 0, i2)) {
            return false;
        }
        stringBuffer.replace(i, i + i2, strBuilderAppend.toString());
        return true;
    }

    public boolean replaceIn(StrBuilder strBuilder) {
        if (strBuilder == null) {
            return false;
        }
        return substitute(strBuilder, 0, strBuilder.length());
    }

    public boolean replaceIn(StrBuilder strBuilder, int i, int i2) {
        if (strBuilder == null) {
            return false;
        }
        return substitute(strBuilder, i, i2);
    }

    protected boolean substitute(StrBuilder strBuilder, int i, int i2) {
        return substitute(strBuilder, i, i2, null) > 0;
    }

    private int substitute(StrBuilder strBuilder, int i, int i2, List<String> list) {
        int i3;
        int iIsMatch;
        StrMatcher variablePrefixMatcher = getVariablePrefixMatcher();
        StrMatcher variableSuffixMatcher = getVariableSuffixMatcher();
        char escapeChar = getEscapeChar();
        boolean z = list == null;
        boolean z2 = false;
        int i4 = 0;
        char[] cArr = strBuilder.buffer;
        int i5 = i + i2;
        List<String> arrayList = list;
        for (int i6 = i; i6 < i5; i6 = i3) {
            int iIsMatch2 = variablePrefixMatcher.isMatch(cArr, i6, i, i5);
            if (iIsMatch2 == 0) {
                i3 = i6 + 1;
            } else if (i6 > i && cArr[i6 - 1] == escapeChar) {
                strBuilder.deleteCharAt(i6 - 1);
                cArr = strBuilder.buffer;
                i4--;
                z2 = true;
                i5--;
                i3 = i6;
            } else {
                i3 = i6 + iIsMatch2;
                int i7 = 0;
                while (true) {
                    if (i3 >= i5) {
                        break;
                    }
                    if (isEnableSubstitutionInVariables() && (iIsMatch = variablePrefixMatcher.isMatch(cArr, i3, i, i5)) != 0) {
                        i7++;
                        i3 += iIsMatch;
                    } else {
                        int iIsMatch3 = variableSuffixMatcher.isMatch(cArr, i3, i, i5);
                        if (iIsMatch3 == 0) {
                            i3++;
                        } else if (i7 == 0) {
                            String str = new String(cArr, i6 + iIsMatch2, (i3 - i6) - iIsMatch2);
                            if (isEnableSubstitutionInVariables()) {
                                StrBuilder strBuilder2 = new StrBuilder(str);
                                substitute(strBuilder2, 0, strBuilder2.length());
                                str = strBuilder2.toString();
                            }
                            i3 += iIsMatch3;
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                                arrayList.add(new String(cArr, i, i2));
                            }
                            checkCyclicSubstitution(str, arrayList);
                            arrayList.add(str);
                            String strResolveVariable = resolveVariable(str, strBuilder, i6, i3);
                            if (strResolveVariable != null) {
                                int length = strResolveVariable.length();
                                strBuilder.replace(i6, i3, strResolveVariable);
                                z2 = true;
                                int iSubstitute = (length + substitute(strBuilder, i6, length, arrayList)) - (i3 - i6);
                                i3 += iSubstitute;
                                i5 += iSubstitute;
                                i4 += iSubstitute;
                                cArr = strBuilder.buffer;
                            }
                            arrayList.remove(arrayList.size() - 1);
                        } else {
                            i7--;
                            i3 += iIsMatch3;
                        }
                    }
                }
            }
        }
        return z ? z2 ? 1 : 0 : i4;
    }

    private void checkCyclicSubstitution(String str, List<String> list) {
        if (!list.contains(str)) {
            return;
        }
        StrBuilder strBuilder = new StrBuilder(256);
        strBuilder.append("Infinite loop in property interpolation of ");
        strBuilder.append(list.remove(0));
        strBuilder.append(": ");
        strBuilder.appendWithSeparators(list, "->");
        throw new IllegalStateException(strBuilder.toString());
    }

    protected String resolveVariable(String str, StrBuilder strBuilder, int i, int i2) {
        StrLookup<?> variableResolver = getVariableResolver();
        if (variableResolver == null) {
            return null;
        }
        return variableResolver.lookup(str);
    }

    public char getEscapeChar() {
        return this.escapeChar;
    }

    public void setEscapeChar(char c2) {
        this.escapeChar = c2;
    }

    public StrMatcher getVariablePrefixMatcher() {
        return this.prefixMatcher;
    }

    public StrSubstitutor setVariablePrefixMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            throw new IllegalArgumentException("Variable prefix matcher must not be null!");
        }
        this.prefixMatcher = strMatcher;
        return this;
    }

    public StrSubstitutor setVariablePrefix(char c2) {
        return setVariablePrefixMatcher(StrMatcher.charMatcher(c2));
    }

    public StrSubstitutor setVariablePrefix(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Variable prefix must not be null!");
        }
        return setVariablePrefixMatcher(StrMatcher.stringMatcher(str));
    }

    public StrMatcher getVariableSuffixMatcher() {
        return this.suffixMatcher;
    }

    public StrSubstitutor setVariableSuffixMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            throw new IllegalArgumentException("Variable suffix matcher must not be null!");
        }
        this.suffixMatcher = strMatcher;
        return this;
    }

    public StrSubstitutor setVariableSuffix(char c2) {
        return setVariableSuffixMatcher(StrMatcher.charMatcher(c2));
    }

    public StrSubstitutor setVariableSuffix(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Variable suffix must not be null!");
        }
        return setVariableSuffixMatcher(StrMatcher.stringMatcher(str));
    }

    public StrLookup<?> getVariableResolver() {
        return this.variableResolver;
    }

    public void setVariableResolver(StrLookup<?> strLookup) {
        this.variableResolver = strLookup;
    }

    public boolean isEnableSubstitutionInVariables() {
        return this.enableSubstitutionInVariables;
    }

    public void setEnableSubstitutionInVariables(boolean z) {
        this.enableSubstitutionInVariables = z;
    }
}
