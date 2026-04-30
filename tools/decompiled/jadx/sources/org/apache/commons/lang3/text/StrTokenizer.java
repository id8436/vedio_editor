package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.ArrayUtils;

/* JADX INFO: loaded from: classes3.dex */
public class StrTokenizer implements Cloneable, ListIterator<String> {
    private static final StrTokenizer CSV_TOKENIZER_PROTOTYPE = new StrTokenizer();
    private static final StrTokenizer TSV_TOKENIZER_PROTOTYPE;
    private char[] chars;
    private StrMatcher delimMatcher;
    private boolean emptyAsNull;
    private boolean ignoreEmptyTokens;
    private StrMatcher ignoredMatcher;
    private StrMatcher quoteMatcher;
    private int tokenPos;
    private String[] tokens;
    private StrMatcher trimmerMatcher;

    static {
        CSV_TOKENIZER_PROTOTYPE.setDelimiterMatcher(StrMatcher.commaMatcher());
        CSV_TOKENIZER_PROTOTYPE.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        CSV_TOKENIZER_PROTOTYPE.setIgnoredMatcher(StrMatcher.noneMatcher());
        CSV_TOKENIZER_PROTOTYPE.setTrimmerMatcher(StrMatcher.trimMatcher());
        CSV_TOKENIZER_PROTOTYPE.setEmptyTokenAsNull(false);
        CSV_TOKENIZER_PROTOTYPE.setIgnoreEmptyTokens(false);
        TSV_TOKENIZER_PROTOTYPE = new StrTokenizer();
        TSV_TOKENIZER_PROTOTYPE.setDelimiterMatcher(StrMatcher.tabMatcher());
        TSV_TOKENIZER_PROTOTYPE.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        TSV_TOKENIZER_PROTOTYPE.setIgnoredMatcher(StrMatcher.noneMatcher());
        TSV_TOKENIZER_PROTOTYPE.setTrimmerMatcher(StrMatcher.trimMatcher());
        TSV_TOKENIZER_PROTOTYPE.setEmptyTokenAsNull(false);
        TSV_TOKENIZER_PROTOTYPE.setIgnoreEmptyTokens(false);
    }

    private static StrTokenizer getCSVClone() {
        return (StrTokenizer) CSV_TOKENIZER_PROTOTYPE.clone();
    }

    public static StrTokenizer getCSVInstance() {
        return getCSVClone();
    }

    public static StrTokenizer getCSVInstance(String str) {
        StrTokenizer cSVClone = getCSVClone();
        cSVClone.reset(str);
        return cSVClone;
    }

    public static StrTokenizer getCSVInstance(char[] cArr) {
        StrTokenizer cSVClone = getCSVClone();
        cSVClone.reset(cArr);
        return cSVClone;
    }

    private static StrTokenizer getTSVClone() {
        return (StrTokenizer) TSV_TOKENIZER_PROTOTYPE.clone();
    }

    public static StrTokenizer getTSVInstance() {
        return getTSVClone();
    }

    public static StrTokenizer getTSVInstance(String str) {
        StrTokenizer tSVClone = getTSVClone();
        tSVClone.reset(str);
        return tSVClone;
    }

    public static StrTokenizer getTSVInstance(char[] cArr) {
        StrTokenizer tSVClone = getTSVClone();
        tSVClone.reset(cArr);
        return tSVClone;
    }

    public StrTokenizer() {
        this.delimMatcher = StrMatcher.splitMatcher();
        this.quoteMatcher = StrMatcher.noneMatcher();
        this.ignoredMatcher = StrMatcher.noneMatcher();
        this.trimmerMatcher = StrMatcher.noneMatcher();
        this.emptyAsNull = false;
        this.ignoreEmptyTokens = true;
        this.chars = null;
    }

    public StrTokenizer(String str) {
        this.delimMatcher = StrMatcher.splitMatcher();
        this.quoteMatcher = StrMatcher.noneMatcher();
        this.ignoredMatcher = StrMatcher.noneMatcher();
        this.trimmerMatcher = StrMatcher.noneMatcher();
        this.emptyAsNull = false;
        this.ignoreEmptyTokens = true;
        if (str != null) {
            this.chars = str.toCharArray();
        } else {
            this.chars = null;
        }
    }

    public StrTokenizer(String str, char c2) {
        this(str);
        setDelimiterChar(c2);
    }

    public StrTokenizer(String str, String str2) {
        this(str);
        setDelimiterString(str2);
    }

    public StrTokenizer(String str, StrMatcher strMatcher) {
        this(str);
        setDelimiterMatcher(strMatcher);
    }

    public StrTokenizer(String str, char c2, char c3) {
        this(str, c2);
        setQuoteChar(c3);
    }

    public StrTokenizer(String str, StrMatcher strMatcher, StrMatcher strMatcher2) {
        this(str, strMatcher);
        setQuoteMatcher(strMatcher2);
    }

    public StrTokenizer(char[] cArr) {
        this.delimMatcher = StrMatcher.splitMatcher();
        this.quoteMatcher = StrMatcher.noneMatcher();
        this.ignoredMatcher = StrMatcher.noneMatcher();
        this.trimmerMatcher = StrMatcher.noneMatcher();
        this.emptyAsNull = false;
        this.ignoreEmptyTokens = true;
        this.chars = ArrayUtils.clone(cArr);
    }

    public StrTokenizer(char[] cArr, char c2) {
        this(cArr);
        setDelimiterChar(c2);
    }

    public StrTokenizer(char[] cArr, String str) {
        this(cArr);
        setDelimiterString(str);
    }

    public StrTokenizer(char[] cArr, StrMatcher strMatcher) {
        this(cArr);
        setDelimiterMatcher(strMatcher);
    }

    public StrTokenizer(char[] cArr, char c2, char c3) {
        this(cArr, c2);
        setQuoteChar(c3);
    }

    public StrTokenizer(char[] cArr, StrMatcher strMatcher, StrMatcher strMatcher2) {
        this(cArr, strMatcher);
        setQuoteMatcher(strMatcher2);
    }

    public int size() {
        checkTokenized();
        return this.tokens.length;
    }

    public String nextToken() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.tokens;
        int i = this.tokenPos;
        this.tokenPos = i + 1;
        return strArr[i];
    }

    public String previousToken() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.tokens;
        int i = this.tokenPos - 1;
        this.tokenPos = i;
        return strArr[i];
    }

    public String[] getTokenArray() {
        checkTokenized();
        return (String[]) this.tokens.clone();
    }

    public List<String> getTokenList() {
        checkTokenized();
        ArrayList arrayList = new ArrayList(this.tokens.length);
        for (String str : this.tokens) {
            arrayList.add(str);
        }
        return arrayList;
    }

    public StrTokenizer reset() {
        this.tokenPos = 0;
        this.tokens = null;
        return this;
    }

    public StrTokenizer reset(String str) {
        reset();
        if (str != null) {
            this.chars = str.toCharArray();
        } else {
            this.chars = null;
        }
        return this;
    }

    public StrTokenizer reset(char[] cArr) {
        reset();
        this.chars = ArrayUtils.clone(cArr);
        return this;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        checkTokenized();
        return this.tokenPos < this.tokens.length;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        if (hasNext()) {
            String[] strArr = this.tokens;
            int i = this.tokenPos;
            this.tokenPos = i + 1;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.tokenPos;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        checkTokenized();
        return this.tokenPos > 0;
    }

    @Override // java.util.ListIterator
    public String previous() {
        if (hasPrevious()) {
            String[] strArr = this.tokens;
            int i = this.tokenPos - 1;
            this.tokenPos = i;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.tokenPos - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    @Override // java.util.ListIterator
    public void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    @Override // java.util.ListIterator
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    private void checkTokenized() {
        if (this.tokens == null) {
            if (this.chars == null) {
                List<String> list = tokenize(null, 0, 0);
                this.tokens = (String[]) list.toArray(new String[list.size()]);
            } else {
                List<String> list2 = tokenize(this.chars, 0, this.chars.length);
                this.tokens = (String[]) list2.toArray(new String[list2.size()]);
            }
        }
    }

    protected List<String> tokenize(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return Collections.emptyList();
        }
        StrBuilder strBuilder = new StrBuilder();
        ArrayList arrayList = new ArrayList();
        int nextToken = i;
        while (nextToken >= 0 && nextToken < i2) {
            nextToken = readNextToken(cArr, nextToken, i2, strBuilder, arrayList);
            if (nextToken >= i2) {
                addToken(arrayList, "");
            }
        }
        return arrayList;
    }

    private void addToken(List<String> list, String str) {
        if (str == null || str.length() == 0) {
            if (!isIgnoreEmptyTokens()) {
                if (isEmptyTokenAsNull()) {
                    str = null;
                }
            } else {
                return;
            }
        }
        list.add(str);
    }

    private int readNextToken(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list) {
        int iMax;
        int i3 = i;
        while (i3 < i2 && (iMax = Math.max(getIgnoredMatcher().isMatch(cArr, i3, i3, i2), getTrimmerMatcher().isMatch(cArr, i3, i3, i2))) != 0 && getDelimiterMatcher().isMatch(cArr, i3, i3, i2) <= 0 && getQuoteMatcher().isMatch(cArr, i3, i3, i2) <= 0) {
            i3 += iMax;
        }
        if (i3 >= i2) {
            addToken(list, "");
            return -1;
        }
        int iIsMatch = getDelimiterMatcher().isMatch(cArr, i3, i3, i2);
        if (iIsMatch > 0) {
            addToken(list, "");
            return iIsMatch + i3;
        }
        int iIsMatch2 = getQuoteMatcher().isMatch(cArr, i3, i3, i2);
        if (iIsMatch2 > 0) {
            return readWithQuotes(cArr, i3 + iIsMatch2, i2, strBuilder, list, i3, iIsMatch2);
        }
        return readWithQuotes(cArr, i3, i2, strBuilder, list, 0, 0);
    }

    private int readWithQuotes(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list, int i3, int i4) {
        strBuilder.clear();
        int size = 0;
        boolean z = i4 > 0;
        int i5 = i;
        while (i5 < i2) {
            if (z) {
                if (isQuote(cArr, i5, i2, i3, i4)) {
                    if (isQuote(cArr, i5 + i4, i2, i3, i4)) {
                        strBuilder.append(cArr, i5, i4);
                        i5 += i4 * 2;
                        size = strBuilder.size();
                    } else {
                        i5 += i4;
                        z = false;
                    }
                } else {
                    strBuilder.append(cArr[i5]);
                    size = strBuilder.size();
                    i5++;
                }
            } else {
                int iIsMatch = getDelimiterMatcher().isMatch(cArr, i5, i, i2);
                if (iIsMatch > 0) {
                    addToken(list, strBuilder.substring(0, size));
                    return iIsMatch + i5;
                }
                if (i4 > 0 && isQuote(cArr, i5, i2, i3, i4)) {
                    i5 += i4;
                    z = true;
                } else {
                    int iIsMatch2 = getIgnoredMatcher().isMatch(cArr, i5, i, i2);
                    if (iIsMatch2 > 0) {
                        i5 += iIsMatch2;
                    } else {
                        int iIsMatch3 = getTrimmerMatcher().isMatch(cArr, i5, i, i2);
                        if (iIsMatch3 > 0) {
                            strBuilder.append(cArr, i5, iIsMatch3);
                            i5 += iIsMatch3;
                        } else {
                            strBuilder.append(cArr[i5]);
                            size = strBuilder.size();
                            i5++;
                        }
                    }
                }
            }
        }
        addToken(list, strBuilder.substring(0, size));
        return -1;
    }

    private boolean isQuote(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            if (i + i5 >= i2 || cArr[i + i5] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    public StrMatcher getDelimiterMatcher() {
        return this.delimMatcher;
    }

    public StrTokenizer setDelimiterMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            this.delimMatcher = StrMatcher.noneMatcher();
        } else {
            this.delimMatcher = strMatcher;
        }
        return this;
    }

    public StrTokenizer setDelimiterChar(char c2) {
        return setDelimiterMatcher(StrMatcher.charMatcher(c2));
    }

    public StrTokenizer setDelimiterString(String str) {
        return setDelimiterMatcher(StrMatcher.stringMatcher(str));
    }

    public StrMatcher getQuoteMatcher() {
        return this.quoteMatcher;
    }

    public StrTokenizer setQuoteMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.quoteMatcher = strMatcher;
        }
        return this;
    }

    public StrTokenizer setQuoteChar(char c2) {
        return setQuoteMatcher(StrMatcher.charMatcher(c2));
    }

    public StrMatcher getIgnoredMatcher() {
        return this.ignoredMatcher;
    }

    public StrTokenizer setIgnoredMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.ignoredMatcher = strMatcher;
        }
        return this;
    }

    public StrTokenizer setIgnoredChar(char c2) {
        return setIgnoredMatcher(StrMatcher.charMatcher(c2));
    }

    public StrMatcher getTrimmerMatcher() {
        return this.trimmerMatcher;
    }

    public StrTokenizer setTrimmerMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.trimmerMatcher = strMatcher;
        }
        return this;
    }

    public boolean isEmptyTokenAsNull() {
        return this.emptyAsNull;
    }

    public StrTokenizer setEmptyTokenAsNull(boolean z) {
        this.emptyAsNull = z;
        return this;
    }

    public boolean isIgnoreEmptyTokens() {
        return this.ignoreEmptyTokens;
    }

    public StrTokenizer setIgnoreEmptyTokens(boolean z) {
        this.ignoreEmptyTokens = z;
        return this;
    }

    public String getContent() {
        if (this.chars == null) {
            return null;
        }
        return new String(this.chars);
    }

    public Object clone() {
        try {
            return cloneReset();
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    Object cloneReset() throws CloneNotSupportedException {
        StrTokenizer strTokenizer = (StrTokenizer) super.clone();
        if (strTokenizer.chars != null) {
            strTokenizer.chars = (char[]) strTokenizer.chars.clone();
        }
        strTokenizer.reset();
        return strTokenizer;
    }

    public String toString() {
        return this.tokens == null ? "StrTokenizer[not tokenized yet]" : "StrTokenizer" + getTokenList();
    }
}
