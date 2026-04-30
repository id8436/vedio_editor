package g.a.a.a;

import android.graphics.Typeface;
import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: compiled from: CalligraphyUtils.java */
/* JADX INFO: loaded from: classes3.dex */
final class l implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Typeface f4911a;

    l(Typeface typeface) {
        this.f4911a = typeface;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        k.a(editable, this.f4911a);
    }
}
