package g.a.a.a;

import android.R;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: CalligraphyConfig.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<? extends TextView>, Integer> f4879a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f4880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f4884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f4885g;
    private final Map<Class<? extends TextView>, Integer> h;

    static {
        f4879a.put(TextView.class, Integer.valueOf(R.attr.textViewStyle));
        f4879a.put(Button.class, Integer.valueOf(R.attr.buttonStyle));
        f4879a.put(EditText.class, Integer.valueOf(R.attr.editTextStyle));
        f4879a.put(AutoCompleteTextView.class, Integer.valueOf(R.attr.autoCompleteTextViewStyle));
        f4879a.put(MultiAutoCompleteTextView.class, Integer.valueOf(R.attr.autoCompleteTextViewStyle));
        f4879a.put(CheckBox.class, Integer.valueOf(R.attr.checkboxStyle));
        f4879a.put(RadioButton.class, Integer.valueOf(R.attr.radioButtonStyle));
        f4879a.put(ToggleButton.class, Integer.valueOf(R.attr.buttonStyleToggle));
    }

    public static a a() {
        if (f4880b == null) {
            f4880b = new a(new b());
        }
        return f4880b;
    }

    protected a(b bVar) {
        this.f4881c = bVar.f4889d;
        this.f4882d = bVar.f4890e;
        this.f4883e = bVar.f4888c;
        this.f4884f = bVar.f4886a;
        this.f4885g = bVar.f4887b;
        HashMap map = new HashMap(f4879a);
        map.putAll(bVar.f4891f);
        this.h = Collections.unmodifiableMap(map);
    }

    public String b() {
        return this.f4882d;
    }

    boolean c() {
        return this.f4881c;
    }

    public boolean d() {
        return this.f4884f;
    }

    public boolean e() {
        return this.f4885g;
    }

    Map<Class<? extends TextView>, Integer> f() {
        return this.h;
    }

    public int g() {
        return this.f4883e;
    }
}
