package g.a.a.a;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: compiled from: CalligraphyTypefaceSpan.java */
/* JADX INFO: loaded from: classes3.dex */
public class j extends MetricAffectingSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Typeface f4909a;

    public j(Typeface typeface) {
        if (typeface == null) {
            throw new IllegalArgumentException("typeface is null");
        }
        this.f4909a = typeface;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        a(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        a(textPaint);
    }

    private void a(Paint paint) {
        Typeface typeface = paint.getTypeface();
        int style = (typeface != null ? typeface.getStyle() : 0) & (this.f4909a.getStyle() ^ (-1));
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(this.f4909a);
    }
}
