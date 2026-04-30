package d;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: FormBody.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f4505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f4506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Charset f4507c;

    public ae() {
        this(null);
    }

    public ae(Charset charset) {
        this.f4505a = new ArrayList();
        this.f4506b = new ArrayList();
        this.f4507c = charset;
    }

    public ae a(String str, String str2) {
        this.f4505a.add(ai.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f4507c));
        this.f4506b.add(ai.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f4507c));
        return this;
    }

    public ae b(String str, String str2) {
        this.f4505a.add(ai.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f4507c));
        this.f4506b.add(ai.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f4507c));
        return this;
    }

    public ad a() {
        return new ad(this.f4505a, this.f4506b);
    }
}
