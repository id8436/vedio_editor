package com.google.api.client.repackaged.com.google.common.base;

import android.support.v7.widget.ActivityChooserView;
import com.google.api.client.repackaged.com.google.common.annotations.Beta;
import com.google.api.client.repackaged.com.google.common.annotations.GwtCompatible;
import com.google.api.client.repackaged.com.google.common.annotations.GwtIncompatible;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Splitter {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final Strategy strategy;
    private final CharMatcher trimmer;

    /* JADX INFO: loaded from: classes3.dex */
    interface Strategy {
        Iterator<String> iterator(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(Strategy strategy) {
        this(strategy, false, CharMatcher.NONE, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    private Splitter(Strategy strategy, boolean z, CharMatcher charMatcher, int i) {
        this.strategy = strategy;
        this.omitEmptyStrings = z;
        this.trimmer = charMatcher;
        this.limit = i;
    }

    public static Splitter on(char c2) {
        return on(CharMatcher.is(c2));
    }

    public static Splitter on(final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new Strategy() { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.1
            @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.Strategy
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.1.1
                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    int separatorStart(int i) {
                        return charMatcher.indexIn(this.toSplit, i);
                    }

                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    int separatorEnd(int i) {
                        return i + 1;
                    }
                };
            }
        });
    }

    public static Splitter on(final String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        return new Splitter(new Strategy() { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.2
            @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.Strategy
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.2.1
                    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
                    
                        r0 = r0 + 1;
                     */
                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public int separatorStart(int r7) {
                        /*
                            r6 = this;
                            com.google.api.client.repackaged.com.google.common.base.Splitter$2 r0 = com.google.api.client.repackaged.com.google.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r0 = r1
                            int r2 = r0.length()
                            java.lang.CharSequence r0 = r6.toSplit
                            int r0 = r0.length()
                            int r3 = r0 - r2
                            r0 = r7
                        L11:
                            if (r0 > r3) goto L2e
                            r1 = 0
                        L14:
                            if (r1 >= r2) goto L2f
                            java.lang.CharSequence r4 = r6.toSplit
                            int r5 = r1 + r0
                            char r4 = r4.charAt(r5)
                            com.google.api.client.repackaged.com.google.common.base.Splitter$2 r5 = com.google.api.client.repackaged.com.google.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r5 = r1
                            char r5 = r5.charAt(r1)
                            if (r4 == r5) goto L2b
                            int r0 = r0 + 1
                            goto L11
                        L2b:
                            int r1 = r1 + 1
                            goto L14
                        L2e:
                            r0 = -1
                        L2f:
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.repackaged.com.google.common.base.Splitter.AnonymousClass2.AnonymousClass1.separatorStart(int):int");
                    }

                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    public int separatorEnd(int i) {
                        return str.length() + i;
                    }
                };
            }
        });
    }

    @GwtIncompatible("java.util.regex")
    public static Splitter on(final Pattern pattern) {
        Preconditions.checkNotNull(pattern);
        Preconditions.checkArgument(!pattern.matcher("").matches(), "The pattern may not match the empty string: %s", pattern);
        return new Splitter(new Strategy() { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.3
            @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.Strategy
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                final Matcher matcher = pattern.matcher(charSequence);
                return new SplittingIterator(splitter, charSequence) { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.3.1
                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    public int separatorStart(int i) {
                        if (matcher.find(i)) {
                            return matcher.start();
                        }
                        return -1;
                    }

                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    public int separatorEnd(int i) {
                        return matcher.end();
                    }
                };
            }
        });
    }

    @GwtIncompatible("java.util.regex")
    public static Splitter onPattern(String str) {
        return on(Pattern.compile(str));
    }

    public static Splitter fixedLength(final int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new Strategy() { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.4
            @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.Strategy
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.4.1
                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    public int separatorStart(int i2) {
                        int i3 = i + i2;
                        if (i3 < this.toSplit.length()) {
                            return i3;
                        }
                        return -1;
                    }

                    @Override // com.google.api.client.repackaged.com.google.common.base.Splitter.SplittingIterator
                    public int separatorEnd(int i2) {
                        return i2;
                    }
                };
            }
        });
    }

    @CheckReturnValue
    public Splitter omitEmptyStrings() {
        return new Splitter(this.strategy, true, this.trimmer, this.limit);
    }

    @CheckReturnValue
    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", Integer.valueOf(i));
        return new Splitter(this.strategy, this.omitEmptyStrings, this.trimmer, i);
    }

    @CheckReturnValue
    public Splitter trimResults() {
        return trimResults(CharMatcher.WHITESPACE);
    }

    @CheckReturnValue
    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.strategy, this.omitEmptyStrings, charMatcher, this.limit);
    }

    public Iterable<String> split(final CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new Iterable<String>() { // from class: com.google.api.client.repackaged.com.google.common.base.Splitter.5
            @Override // java.lang.Iterable
            public Iterator<String> iterator() {
                return Splitter.this.splittingIterator(charSequence);
            }

            public String toString() {
                return Joiner.on(", ").appendTo(new StringBuilder().append('['), (Iterable<?>) this).append(']').toString();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<String> splittingIterator(CharSequence charSequence) {
        return this.strategy.iterator(this, charSequence);
    }

    @Beta
    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> itSplittingIterator = splittingIterator(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itSplittingIterator.hasNext()) {
            arrayList.add(itSplittingIterator.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(String str) {
        return withKeyValueSeparator(on(str));
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(char c2) {
        return withKeyValueSeparator(on(c2));
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(Splitter splitter) {
        return new MapSplitter(splitter);
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Beta
    public final class MapSplitter {
        private static final String INVALID_ENTRY_MESSAGE = "Chunk [%s] is not a valid entry";
        private final Splitter entrySplitter;
        private final Splitter outerSplitter;

        private MapSplitter(Splitter splitter, Splitter splitter2) {
            this.outerSplitter = splitter;
            this.entrySplitter = (Splitter) Preconditions.checkNotNull(splitter2);
        }

        public Map<String, String> split(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.outerSplitter.split(charSequence)) {
                Iterator itSplittingIterator = this.entrySplitter.splittingIterator(str);
                Preconditions.checkArgument(itSplittingIterator.hasNext(), INVALID_ENTRY_MESSAGE, str);
                String str2 = (String) itSplittingIterator.next();
                Preconditions.checkArgument(!linkedHashMap.containsKey(str2), "Duplicate key [%s] found.", str2);
                Preconditions.checkArgument(itSplittingIterator.hasNext(), INVALID_ENTRY_MESSAGE, str);
                linkedHashMap.put(str2, (String) itSplittingIterator.next());
                Preconditions.checkArgument(!itSplittingIterator.hasNext(), INVALID_ENTRY_MESSAGE, str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    abstract class SplittingIterator extends AbstractIterator<String> {
        int limit;
        int offset = 0;
        final boolean omitEmptyStrings;
        final CharSequence toSplit;
        final CharMatcher trimmer;

        abstract int separatorEnd(int i);

        abstract int separatorStart(int i);

        protected SplittingIterator(Splitter splitter, CharSequence charSequence) {
            this.trimmer = splitter.trimmer;
            this.omitEmptyStrings = splitter.omitEmptyStrings;
            this.limit = splitter.limit;
            this.toSplit = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.api.client.repackaged.com.google.common.base.AbstractIterator
        public String computeNext() {
            int i = this.offset;
            while (this.offset != -1) {
                int iSeparatorStart = separatorStart(this.offset);
                if (iSeparatorStart == -1) {
                    iSeparatorStart = this.toSplit.length();
                    this.offset = -1;
                } else {
                    this.offset = separatorEnd(iSeparatorStart);
                }
                if (this.offset == i) {
                    this.offset++;
                    if (this.offset >= this.toSplit.length()) {
                        this.offset = -1;
                    }
                } else {
                    int i2 = i;
                    while (i2 < iSeparatorStart && this.trimmer.matches(this.toSplit.charAt(i2))) {
                        i2++;
                    }
                    int length = iSeparatorStart;
                    while (length > i2 && this.trimmer.matches(this.toSplit.charAt(length - 1))) {
                        length--;
                    }
                    if (this.omitEmptyStrings && i2 == length) {
                        i = this.offset;
                    } else {
                        if (this.limit == 1) {
                            length = this.toSplit.length();
                            this.offset = -1;
                            while (length > i2 && this.trimmer.matches(this.toSplit.charAt(length - 1))) {
                                length--;
                            }
                        } else {
                            this.limit--;
                        }
                        return this.toSplit.subSequence(i2, length).toString();
                    }
                }
            }
            return endOfData();
        }
    }
}
