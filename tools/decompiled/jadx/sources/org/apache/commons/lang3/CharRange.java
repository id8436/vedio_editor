package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
final class CharRange implements Serializable, Iterable<Character> {
    private static final long serialVersionUID = 8270183163158333422L;
    private final char end;
    private transient String iToString;
    private final boolean negated;
    private final char start;

    /* JADX INFO: renamed from: org.apache.commons.lang3.CharRange$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    private CharRange(char c2, char c3, boolean z) {
        if (c2 <= c3) {
            c3 = c2;
            c2 = c3;
        }
        this.start = c3;
        this.end = c2;
        this.negated = z;
    }

    public static CharRange is(char c2) {
        return new CharRange(c2, c2, false);
    }

    public static CharRange isNot(char c2) {
        return new CharRange(c2, c2, true);
    }

    public static CharRange isIn(char c2, char c3) {
        return new CharRange(c2, c3, false);
    }

    public static CharRange isNotIn(char c2, char c3) {
        return new CharRange(c2, c3, true);
    }

    public char getStart() {
        return this.start;
    }

    public char getEnd() {
        return this.end;
    }

    public boolean isNegated() {
        return this.negated;
    }

    public boolean contains(char c2) {
        return (c2 >= this.start && c2 <= this.end) != this.negated;
    }

    public boolean contains(CharRange charRange) {
        if (charRange == null) {
            throw new IllegalArgumentException("The Range must not be null");
        }
        if (!this.negated) {
            return charRange.negated ? this.start == 0 && this.end == 65535 : this.start <= charRange.start && this.end >= charRange.end;
        }
        if (charRange.negated) {
            return this.start >= charRange.start && this.end <= charRange.end;
        }
        return charRange.end < this.start || charRange.start > this.end;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CharRange)) {
            return false;
        }
        CharRange charRange = (CharRange) obj;
        return this.start == charRange.start && this.end == charRange.end && this.negated == charRange.negated;
    }

    public int hashCode() {
        return (this.negated ? 1 : 0) + (this.end * 7) + this.start + 'S';
    }

    public String toString() {
        if (this.iToString == null) {
            StringBuilder sb = new StringBuilder(4);
            if (isNegated()) {
                sb.append('^');
            }
            sb.append(this.start);
            if (this.start != this.end) {
                sb.append('-');
                sb.append(this.end);
            }
            this.iToString = sb.toString();
        }
        return this.iToString;
    }

    @Override // java.lang.Iterable
    public Iterator<Character> iterator() {
        return new CharacterIterator(this, null);
    }

    class CharacterIterator implements Iterator<Character> {
        private char current;
        private boolean hasNext;
        private final CharRange range;

        /* synthetic */ CharacterIterator(CharRange charRange, AnonymousClass1 anonymousClass1) {
            this(charRange);
        }

        private CharacterIterator(CharRange charRange) {
            this.range = charRange;
            this.hasNext = true;
            if (this.range.negated) {
                if (this.range.start == 0) {
                    if (this.range.end != 65535) {
                        this.current = (char) (this.range.end + 1);
                        return;
                    } else {
                        this.hasNext = false;
                        return;
                    }
                }
                this.current = (char) 0;
                return;
            }
            this.current = this.range.start;
        }

        private void prepareNext() {
            if (!this.range.negated) {
                if (this.current < this.range.end) {
                    this.current = (char) (this.current + 1);
                    return;
                } else {
                    this.hasNext = false;
                    return;
                }
            }
            if (this.current != 65535) {
                if (this.current + 1 == this.range.start) {
                    if (this.range.end != 65535) {
                        this.current = (char) (this.range.end + 1);
                        return;
                    } else {
                        this.hasNext = false;
                        return;
                    }
                }
                this.current = (char) (this.current + 1);
                return;
            }
            this.hasNext = false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Character next() {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            char c2 = this.current;
            prepareNext();
            return Character.valueOf(c2);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
