package com.google.gdata.util.common.io;

import java.io.IOException;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
abstract class LineBuffer {
    private StringBuilder line = new StringBuilder();
    private boolean sawReturn;

    protected abstract void handleLine(String str, String str2) throws IOException;

    LineBuffer() {
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void add(char[] r10, int r11, int r12) throws java.io.IOException {
        /*
            r9 = this;
            r7 = 10
            r2 = 0
            r1 = 1
            boolean r0 = r9.sawReturn
            if (r0 == 0) goto L62
            if (r12 <= 0) goto L62
            char r0 = r10[r11]
            if (r0 != r7) goto L24
            r0 = r1
        Lf:
            boolean r0 = r9.finishLine(r0)
            if (r0 == 0) goto L62
            int r0 = r11 + 1
        L17:
            int r4 = r11 + r12
            r3 = r0
        L1a:
            if (r3 >= r4) goto L57
            char r5 = r10[r3]
            switch(r5) {
                case 10: goto L4a;
                case 11: goto L21;
                case 12: goto L21;
                case 13: goto L26;
                default: goto L21;
            }
        L21:
            int r3 = r3 + 1
            goto L1a
        L24:
            r0 = r2
            goto Lf
        L26:
            java.lang.StringBuilder r5 = r9.line
            int r6 = r3 - r0
            r5.append(r10, r0, r6)
            r9.sawReturn = r1
            int r0 = r3 + 1
            if (r0 >= r4) goto L60
            int r0 = r3 + 1
            char r0 = r10[r0]
            if (r0 != r7) goto L48
            r0 = r1
        L3a:
            boolean r0 = r9.finishLine(r0)
            if (r0 == 0) goto L60
            int r0 = r3 + 1
        L42:
            int r3 = r0 + 1
            r8 = r3
            r3 = r0
            r0 = r8
            goto L21
        L48:
            r0 = r2
            goto L3a
        L4a:
            java.lang.StringBuilder r5 = r9.line
            int r6 = r3 - r0
            r5.append(r10, r0, r6)
            r9.finishLine(r1)
            int r0 = r3 + 1
            goto L21
        L57:
            java.lang.StringBuilder r1 = r9.line
            int r2 = r11 + r12
            int r2 = r2 - r0
            r1.append(r10, r0, r2)
            return
        L60:
            r0 = r3
            goto L42
        L62:
            r0 = r11
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gdata.util.common.io.LineBuffer.add(char[], int, int):void");
    }

    private boolean finishLine(boolean z) throws IOException {
        String str;
        String string = this.line.toString();
        if (this.sawReturn) {
            str = z ? "\r\n" : "\r";
        } else {
            str = z ? IOUtils.LINE_SEPARATOR_UNIX : "";
        }
        handleLine(string, str);
        this.line = new StringBuilder();
        this.sawReturn = false;
        return z;
    }

    protected void finish() throws IOException {
        if (this.sawReturn || this.line.length() > 0) {
            finishLine(false);
        }
    }
}
