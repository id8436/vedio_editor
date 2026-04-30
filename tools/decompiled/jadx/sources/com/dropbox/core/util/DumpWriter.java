package com.dropbox.core.util;

import com.dropbox.core.json.JsonDateReader;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DumpWriter {
    public abstract DumpWriter f(String str);

    public abstract DumpWriter listEnd();

    public abstract DumpWriter listStart();

    public abstract DumpWriter recordEnd();

    public abstract DumpWriter recordStart(String str);

    public abstract DumpWriter verbatim(String str);

    public final class Multiline extends DumpWriter {
        private final StringBuilder buf;
        private int currentIndent;
        private final int indentAmount;
        boolean nl;

        public Multiline(StringBuilder sb, int i, int i2, boolean z) {
            this.nl = true;
            if (sb == null) {
                throw new IllegalArgumentException("'buf' must not be null");
            }
            if (i < 0) {
                throw new IllegalArgumentException("'indentAmount' must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("'currentIndent' must be non-negative");
            }
            this.buf = sb;
            this.indentAmount = i;
            this.currentIndent = i2;
            this.nl = z;
        }

        public Multiline(StringBuilder sb, int i, boolean z) {
            this(sb, i, 0, z);
        }

        private void prefix() {
            if (this.nl) {
                int i = this.currentIndent;
                for (int i2 = 0; i2 < i; i2++) {
                    this.buf.append(' ');
                }
            }
        }

        private void indentMore() {
            this.currentIndent += this.indentAmount;
        }

        private void indentLess() {
            if (this.indentAmount > this.currentIndent) {
                throw new IllegalStateException("indent went negative");
            }
            this.currentIndent -= this.indentAmount;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordStart(String str) {
            prefix();
            if (str != null) {
                this.buf.append(str).append(" ");
            }
            this.buf.append("{\n");
            this.nl = true;
            indentMore();
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordEnd() {
            if (!this.nl) {
                throw new AssertionError("called recordEnd() in a bad state");
            }
            indentLess();
            prefix();
            this.buf.append("}\n");
            this.nl = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter f(String str) {
            if (!this.nl) {
                throw new AssertionError("called fieldStart() in a bad state");
            }
            prefix();
            this.buf.append(str).append(" = ");
            this.nl = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listStart() {
            prefix();
            this.buf.append("[\n");
            this.nl = true;
            indentMore();
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listEnd() {
            if (!this.nl) {
                throw new AssertionError("called listEnd() in a bad state");
            }
            indentLess();
            prefix();
            this.buf.append("]\n");
            this.nl = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter verbatim(String str) {
            prefix();
            this.buf.append(str);
            this.buf.append('\n');
            this.nl = true;
            return this;
        }
    }

    public final class Plain extends DumpWriter {
        private StringBuilder buf;
        private boolean needSep = false;

        public Plain(StringBuilder sb) {
            this.buf = sb;
        }

        private void sep() {
            if (this.needSep) {
                this.buf.append(", ");
            } else {
                this.needSep = true;
            }
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordStart(String str) {
            if (str != null) {
                this.buf.append(str);
            }
            this.buf.append("(");
            this.needSep = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter recordEnd() {
            this.buf.append(")");
            this.needSep = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter f(String str) {
            sep();
            this.buf.append(str).append('=');
            this.needSep = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listStart() {
            sep();
            this.buf.append("[");
            this.needSep = false;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter listEnd() {
            this.buf.append("]");
            this.needSep = true;
            return this;
        }

        @Override // com.dropbox.core.util.DumpWriter
        public DumpWriter verbatim(String str) {
            sep();
            this.buf.append(str);
            return this;
        }
    }

    public DumpWriter fieldVerbatim(String str, String str2) {
        return f(str).verbatim(str2);
    }

    public DumpWriter v(Iterable<? extends Dumpable> iterable) {
        if (iterable == null) {
            verbatim("null");
        } else {
            listStart();
            Iterator<? extends Dumpable> it = iterable.iterator();
            while (it.hasNext()) {
                v(it.next());
            }
            listEnd();
        }
        return this;
    }

    public DumpWriter v(String str) {
        if (str == null) {
            verbatim("null");
        } else {
            verbatim(StringUtil.jq(str));
        }
        return this;
    }

    public DumpWriter v(int i) {
        return verbatim(Integer.toString(i));
    }

    public DumpWriter v(long j) {
        return verbatim(Long.toString(j));
    }

    public DumpWriter v(boolean z) {
        return verbatim(Boolean.toString(z));
    }

    public DumpWriter v(float f2) {
        return verbatim(Float.toString(f2));
    }

    public DumpWriter v(double d2) {
        return verbatim(Double.toString(d2));
    }

    public DumpWriter v(Date date) {
        return verbatim(toStringDate(date));
    }

    public DumpWriter v(Long l) {
        return verbatim(l == null ? "null" : Long.toString(l.longValue()));
    }

    public DumpWriter v(Dumpable dumpable) {
        if (dumpable == null) {
            verbatim("null");
        } else {
            recordStart(dumpable.getTypeName());
            dumpable.dumpFields(this);
            recordEnd();
        }
        return this;
    }

    public static String toStringDate(Date date) {
        if (date == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(JsonDateReader.UTC);
        gregorianCalendar.setTime(date);
        String string = Integer.toString(gregorianCalendar.get(1));
        String strZeroPad = zeroPad(Integer.toString(gregorianCalendar.get(2) + 1), 2);
        String strZeroPad2 = zeroPad(Integer.toString(gregorianCalendar.get(5)), 2);
        String strZeroPad3 = zeroPad(Integer.toString(gregorianCalendar.get(11)), 2);
        String strZeroPad4 = zeroPad(Integer.toString(gregorianCalendar.get(12)), 2);
        String strZeroPad5 = zeroPad(Integer.toString(gregorianCalendar.get(13)), 2);
        sb.append('\"');
        sb.append(string).append(URIUtil.SLASH).append(strZeroPad).append(URIUtil.SLASH).append(strZeroPad2).append(" ");
        sb.append(strZeroPad3).append(":").append(strZeroPad4).append(":").append(strZeroPad5).append(" UTC");
        sb.append('\"');
        return sb.toString();
    }

    private static String zeroPad(String str, int i) {
        while (str.length() < i) {
            str = "0" + str;
        }
        return str;
    }
}
