package org.apache.commons.lang3.text.translate;

import android.support.v7.widget.ActivityChooserView;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes3.dex */
public class UnicodeEscaper extends CodePointTranslator {
    private final int above;
    private final int below;
    private final boolean between;

    public UnicodeEscaper() {
        this(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true);
    }

    private UnicodeEscaper(int i, int i2, boolean z) {
        this.below = i;
        this.above = i2;
        this.between = z;
    }

    public static UnicodeEscaper below(int i) {
        return outsideOf(i, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static UnicodeEscaper above(int i) {
        return outsideOf(0, i);
    }

    public static UnicodeEscaper outsideOf(int i, int i2) {
        return new UnicodeEscaper(i, i2, false);
    }

    public static UnicodeEscaper between(int i, int i2) {
        return new UnicodeEscaper(i, i2, true);
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i, Writer writer) throws IOException {
        if (this.between) {
            if (i < this.below || i > this.above) {
                return false;
            }
        } else if (i >= this.below && i <= this.above) {
            return false;
        }
        if (i > 65535 || i > 4095) {
            writer.write("\\u" + hex(i));
        } else if (i > 255) {
            writer.write("\\u0" + hex(i));
        } else if (i > 15) {
            writer.write("\\u00" + hex(i));
        } else {
            writer.write("\\u000" + hex(i));
        }
        return true;
    }
}
