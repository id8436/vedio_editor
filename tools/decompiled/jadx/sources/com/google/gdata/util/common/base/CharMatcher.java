package com.google.gdata.util.common.base;

import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CharMatcher implements Predicate<Character> {
    private static final String ZEROES = "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０";
    public static final CharMatcher ANY = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.1
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return true;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            int length = charSequence.length();
            Preconditions.checkPositionIndex(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c2) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c2);
            return new String(cArr);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence.length() * charSequence2.length());
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c2) {
            return charSequence.length() == 0 ? "" : String.valueOf(c2);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher negate() {
            return NONE;
        }
    };
    public static final CharMatcher NONE = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.2
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return false;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            Preconditions.checkPositionIndex(i, charSequence.length());
            return -1;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c2) {
            return charSequence.toString();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            Preconditions.checkNotNull(charSequence2);
            return charSequence.toString();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c2) {
            return charSequence.toString();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return 0;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher negate() {
            return ANY;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        protected void setBits(LookupTable lookupTable) {
        }
    };
    public static final CharMatcher ASCII = inRange(0, Ascii.MAX);
    public static final CharMatcher WHITESPACE = anyOf("\t\n\u000b\f\r \u0085 \u1680\u180e\u2028\u2029 \u205f\u3000").or(inRange(8192, 8202)).precomputed();
    public static final CharMatcher DIGIT = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.3
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        protected void setBits(LookupTable lookupTable) {
            for (char c2 : CharMatcher.ZEROES.toCharArray()) {
                for (char c3 = 0; c3 < '\n'; c3 = (char) (c3 + 1)) {
                    lookupTable.set((char) (c2 + c3));
                }
            }
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            throw new UnsupportedOperationException();
        }
    }.precomputed();
    public static final CharMatcher LEGACY_WHITESPACE = anyOf(StringUtil.WHITE_SPACES);
    public static final CharMatcher JAVA_WHITESPACE = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.4
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isWhitespace(c2);
        }
    };
    public static final CharMatcher JAVA_DIGIT = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.5
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isDigit(c2);
        }
    };
    public static final CharMatcher JAVA_LETTER = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.6
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isLetter(c2);
        }
    };
    public static final CharMatcher JAVA_LETTER_OR_DIGIT = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.7
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isLetterOrDigit(c2);
        }
    };
    public static final CharMatcher JAVA_UPPER_CASE = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.8
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isUpperCase(c2);
        }
    };
    public static final CharMatcher JAVA_LOWER_CASE = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.9
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isLowerCase(c2);
        }
    };
    public static final CharMatcher JAVA_ISO_CONTROL = new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.10
        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            return Character.isISOControl(c2);
        }
    };
    public static final CharMatcher INVISIBLE = inRange(0, ' ').or(inRange(Ascii.MAX, 160)).or(is(173)).or(inRange(1536, 1539)).or(anyOf("\u06dd\u070f\u1680឴឵\u180e")).or(inRange(8192, 8207)).or(inRange(8232, 8239)).or(inRange(8287, 8292)).or(inRange(8298, 8303)).or(is(12288)).or(inRange(55296, 63743)).or(anyOf("\ufeff\ufff9\ufffa\ufffb")).precomputed();

    public abstract boolean matches(char c2);

    public static CharMatcher is(final char c2) {
        return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.11
            @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                return super.apply(ch);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matches(char c3) {
                return c3 == c2;
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public String replaceFrom(CharSequence charSequence, char c3) {
                return charSequence.toString().replace(c2, c3);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher and(CharMatcher charMatcher) {
                return charMatcher.matches(c2) ? this : NONE;
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher or(CharMatcher charMatcher) {
                return charMatcher.matches(c2) ? charMatcher : super.or(charMatcher);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher negate() {
                return isNot(c2);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            protected void setBits(LookupTable lookupTable) {
                lookupTable.set(c2);
            }
        };
    }

    public static CharMatcher isNot(final char c2) {
        return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.12
            @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                return super.apply(ch);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matches(char c3) {
                return c3 != c2;
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher and(CharMatcher charMatcher) {
                return charMatcher.matches(c2) ? super.and(charMatcher) : charMatcher;
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher or(CharMatcher charMatcher) {
                return charMatcher.matches(c2) ? ANY : this;
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher negate() {
                return is(c2);
            }
        };
    }

    public static CharMatcher anyOf(CharSequence charSequence) {
        switch (charSequence.length()) {
            case 0:
                return NONE;
            case 1:
                return is(charSequence.charAt(0));
            case 2:
                final char cCharAt = charSequence.charAt(0);
                final char cCharAt2 = charSequence.charAt(1);
                return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.13
                    @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
                    public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                        return super.apply(ch);
                    }

                    @Override // com.google.gdata.util.common.base.CharMatcher
                    public boolean matches(char c2) {
                        return c2 == cCharAt || c2 == cCharAt2;
                    }

                    @Override // com.google.gdata.util.common.base.CharMatcher
                    protected void setBits(LookupTable lookupTable) {
                        lookupTable.set(cCharAt);
                        lookupTable.set(cCharAt2);
                    }
                };
            default:
                final char[] charArray = charSequence.toString().toCharArray();
                Arrays.sort(charArray);
                return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.14
                    @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
                    public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                        return super.apply(ch);
                    }

                    @Override // com.google.gdata.util.common.base.CharMatcher
                    public boolean matches(char c2) {
                        return Arrays.binarySearch(charArray, c2) >= 0;
                    }

                    @Override // com.google.gdata.util.common.base.CharMatcher
                    protected void setBits(LookupTable lookupTable) {
                        for (char c2 : charArray) {
                            lookupTable.set(c2);
                        }
                    }
                };
        }
    }

    public static CharMatcher noneOf(CharSequence charSequence) {
        return anyOf(charSequence).negate();
    }

    public static CharMatcher inRange(final char c2, final char c3) {
        Preconditions.checkArgument(c3 >= c2);
        return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.15
            @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                return super.apply(ch);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matches(char c4) {
                return c2 <= c4 && c4 <= c3;
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            protected void setBits(LookupTable lookupTable) {
                char c4 = c2;
                while (true) {
                    lookupTable.set(c4);
                    char c5 = (char) (c4 + 1);
                    if (c4 == c3) {
                        return;
                    } else {
                        c4 = c5;
                    }
                }
            }
        };
    }

    public static CharMatcher forPredicate(final Predicate<? super Character> predicate) {
        Preconditions.checkNotNull(predicate);
        return predicate instanceof CharMatcher ? (CharMatcher) predicate : new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.16
            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matches(char c2) {
                return predicate.apply(Character.valueOf(c2));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
            public boolean apply(Character ch) {
                return predicate.apply(Preconditions.checkNotNull(ch));
            }
        };
    }

    public CharMatcher negate() {
        return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.17
            @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                return super.apply(ch);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matches(char c2) {
                return !this.matches(c2);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matchesAllOf(CharSequence charSequence) {
                return this.matchesNoneOf(charSequence);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matchesNoneOf(CharSequence charSequence) {
                return this.matchesAllOf(charSequence);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public int countIn(CharSequence charSequence) {
                return charSequence.length() - this.countIn(charSequence);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher negate() {
                return this;
            }
        };
    }

    public CharMatcher and(CharMatcher charMatcher) {
        return new And(Arrays.asList(this, (CharMatcher) Preconditions.checkNotNull(charMatcher)));
    }

    class And extends CharMatcher {
        List<CharMatcher> components;

        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        And(List<CharMatcher> list) {
            this.components = list;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            Iterator<CharMatcher> it = this.components.iterator();
            while (it.hasNext()) {
                if (!it.next().matches(c2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            ArrayList arrayList = new ArrayList(this.components);
            arrayList.add(Preconditions.checkNotNull(charMatcher));
            return new And(arrayList);
        }
    }

    public CharMatcher or(CharMatcher charMatcher) {
        return new Or(Arrays.asList(this, (CharMatcher) Preconditions.checkNotNull(charMatcher)));
    }

    class Or extends CharMatcher {
        List<CharMatcher> components;

        @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        Or(List<CharMatcher> list) {
            this.components = list;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public boolean matches(char c2) {
            Iterator<CharMatcher> it = this.components.iterator();
            while (it.hasNext()) {
                if (it.next().matches(c2)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            ArrayList arrayList = new ArrayList(this.components);
            arrayList.add(Preconditions.checkNotNull(charMatcher));
            return new Or(arrayList);
        }

        @Override // com.google.gdata.util.common.base.CharMatcher
        protected void setBits(LookupTable lookupTable) {
            Iterator<CharMatcher> it = this.components.iterator();
            while (it.hasNext()) {
                it.next().setBits(lookupTable);
            }
        }
    }

    public CharMatcher precomputed() {
        final LookupTable lookupTable = new LookupTable();
        setBits(lookupTable);
        return new CharMatcher() { // from class: com.google.gdata.util.common.base.CharMatcher.18
            @Override // com.google.gdata.util.common.base.CharMatcher, com.google.gdata.util.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Character ch) {
                return super.apply(ch);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public boolean matches(char c2) {
                return lookupTable.get(c2);
            }

            @Override // com.google.gdata.util.common.base.CharMatcher
            public CharMatcher precomputed() {
                return this;
            }
        };
    }

    protected void setBits(LookupTable lookupTable) {
        char c2 = 0;
        while (true) {
            if (matches(c2)) {
                lookupTable.set(c2);
            }
            char c3 = (char) (c2 + 1);
            if (c2 == 65535) {
                return;
            } else {
                c2 = c3;
            }
        }
    }

    public class LookupTable {
        long[] data = new long[1024];

        protected LookupTable() {
        }

        void set(char c2) {
            long[] jArr = this.data;
            int i = c2 >> 6;
            jArr[i] = jArr[i] | (1 << c2);
        }

        boolean get(char c2) {
            return (this.data[c2 >> 6] & (1 << c2)) != 0;
        }
    }

    public boolean matchesAllOf(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesNoneOf(CharSequence charSequence) {
        return indexIn(charSequence) == -1;
    }

    public int indexIn(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (matches(charSequence.charAt(i))) {
                return i;
            }
        }
        return -1;
    }

    public int indexIn(CharSequence charSequence, int i) {
        int length = charSequence.length();
        Preconditions.checkPositionIndex(i, length);
        for (int i2 = i; i2 < length; i2++) {
            if (matches(charSequence.charAt(i2))) {
                return i2;
            }
        }
        return -1;
    }

    public int lastIndexIn(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (matches(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public int countIn(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (matches(charSequence.charAt(i2))) {
                i++;
            }
        }
        return i;
    }

    public String removeFrom(CharSequence charSequence) {
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn != -1) {
            char[] charArray = string.toCharArray();
            int i = 1;
            while (true) {
                while (true) {
                    iIndexIn++;
                    if (iIndexIn != charArray.length) {
                        if (matches(charArray[iIndexIn])) {
                            break;
                        }
                        charArray[iIndexIn - i] = charArray[iIndexIn];
                    } else {
                        return new String(charArray, 0, iIndexIn - i);
                    }
                }
                i++;
            }
        } else {
            return string;
        }
    }

    public String retainFrom(CharSequence charSequence) {
        return negate().removeFrom(charSequence);
    }

    public String replaceFrom(CharSequence charSequence, char c2) {
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn != -1) {
            char[] charArray = string.toCharArray();
            charArray[iIndexIn] = c2;
            for (int i = iIndexIn + 1; i < charArray.length; i++) {
                if (matches(charArray[i])) {
                    charArray[i] = c2;
                }
            }
            return new String(charArray);
        }
        return string;
    }

    public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
        int i = 0;
        int length = charSequence2.length();
        if (length == 0) {
            return removeFrom(charSequence);
        }
        if (length == 1) {
            return replaceFrom(charSequence, charSequence2.charAt(0));
        }
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn == -1) {
            return string;
        }
        int length2 = string.length();
        StringBuilder sb = new StringBuilder(((int) (((double) length2) * 1.5d)) + 16);
        do {
            sb.append((CharSequence) string, i, iIndexIn);
            sb.append(charSequence2);
            i = iIndexIn + 1;
            iIndexIn = indexIn(string, i);
        } while (iIndexIn != -1);
        sb.append((CharSequence) string, i, length2);
        return sb.toString();
    }

    public String trimFrom(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && matches(charSequence.charAt(i))) {
            i++;
        }
        int i2 = length - 1;
        while (i2 > i && matches(charSequence.charAt(i2))) {
            i2--;
        }
        return charSequence.subSequence(i, i2 + 1).toString();
    }

    public String trimLeadingFrom(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && matches(charSequence.charAt(i))) {
            i++;
        }
        return charSequence.subSequence(i, length).toString();
    }

    public String trimTrailingFrom(CharSequence charSequence) {
        int length = charSequence.length() - 1;
        while (length >= 0 && matches(charSequence.charAt(length))) {
            length--;
        }
        return charSequence.subSequence(0, length + 1).toString();
    }

    public String collapseFrom(CharSequence charSequence, char c2) {
        int iIndexIn = indexIn(charSequence);
        if (iIndexIn == -1) {
            return charSequence.toString();
        }
        StringBuilder sbAppend = new StringBuilder(charSequence.length()).append(charSequence.subSequence(0, iIndexIn)).append(c2);
        boolean z = true;
        for (int i = iIndexIn + 1; i < charSequence.length(); i++) {
            char cCharAt = charSequence.charAt(i);
            if (apply(Character.valueOf(cCharAt))) {
                if (!z) {
                    sbAppend.append(c2);
                    z = true;
                }
            } else {
                sbAppend.append(cCharAt);
                z = false;
            }
        }
        return sbAppend.toString();
    }

    public String trimAndCollapseFrom(CharSequence charSequence, char c2) {
        int iIndexIn = negate().indexIn(charSequence);
        if (iIndexIn == -1) {
            return "";
        }
        StringBuilder sb = new StringBuilder(charSequence.length());
        boolean z = false;
        while (iIndexIn < charSequence.length()) {
            char cCharAt = charSequence.charAt(iIndexIn);
            if (apply(Character.valueOf(cCharAt))) {
                z = true;
            } else {
                if (z) {
                    sb.append(c2);
                    z = false;
                }
                sb.append(cCharAt);
            }
            iIndexIn++;
        }
        return sb.toString();
    }

    @Override // com.google.gdata.util.common.base.Predicate
    public boolean apply(Character ch) {
        return matches(ch.charValue());
    }
}
