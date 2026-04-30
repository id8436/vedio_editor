package com.learnncode.mediachooser.b;

import android.content.Context;
import android.widget.ImageView;
import com.k.a.ak;
import java.io.File;

/* JADX INFO: compiled from: ImageLoadAsync.java */
/* JADX INFO: loaded from: classes3.dex */
public class a extends b<String, String, String> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f3677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f3678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3680f;

    public a(Context context, ImageView imageView, int i) {
        this.f3677c = imageView;
        this.f3678d = context;
        this.f3679e = i;
        this.f3680f = true;
    }

    public a(Context context, ImageView imageView) {
        this.f3677c = imageView;
        this.f3678d = context;
        this.f3679e = -1;
        this.f3680f = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.learnncode.mediachooser.b.b
    public String a(String... strArr) {
        return strArr[0].toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.learnncode.mediachooser.b.b
    public void a(String str) {
        if (this.f3680f) {
            ak.a(this.f3678d).a(new File(str)).a(this.f3679e, this.f3679e).c().a(com.learnncode.mediachooser.i.ic_loading).a(this.f3677c);
        } else {
            ak.a(this.f3678d).a(new File(str)).a().a(com.learnncode.mediachooser.i.ic_loading).a(this.f3677c);
        }
    }
}
