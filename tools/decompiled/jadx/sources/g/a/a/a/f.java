package g.a.a.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: CalligraphyLayoutInflater.java */
/* JADX INFO: loaded from: classes3.dex */
class f extends LayoutInflater {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f4898a = {"android.widget.", "android.webkit."};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f4900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Field f4902e;

    protected f(LayoutInflater layoutInflater, Context context, int i, boolean z) {
        super(layoutInflater, context);
        this.f4901d = false;
        this.f4902e = null;
        this.f4899b = i;
        this.f4900c = new d(i);
        a(z);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new f(this, context, this.f4899b, true);
    }

    @Override // android.view.LayoutInflater
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        a();
        return super.inflate(xmlPullParser, viewGroup, z);
    }

    private void a(boolean z) {
        if (!z) {
            if (Build.VERSION.SDK_INT >= 11 && getFactory2() != null && !(getFactory2() instanceof i)) {
                setFactory2(getFactory2());
            }
            if (getFactory() != null && !(getFactory() instanceof h)) {
                setFactory(getFactory());
            }
        }
    }

    @Override // android.view.LayoutInflater
    public void setFactory(LayoutInflater.Factory factory) {
        if (!(factory instanceof h)) {
            super.setFactory(new h(factory, this, this.f4900c));
        } else {
            super.setFactory(factory);
        }
    }

    @Override // android.view.LayoutInflater
    @TargetApi(11)
    public void setFactory2(LayoutInflater.Factory2 factory2) {
        if (!(factory2 instanceof i)) {
            super.setFactory2(new i(factory2, this.f4900c));
        } else {
            super.setFactory2(factory2);
        }
    }

    private void a() {
        if (!this.f4901d && a.a().d()) {
            if (!(getContext() instanceof LayoutInflater.Factory2)) {
                this.f4901d = true;
                return;
            }
            Method methodB = p.b(LayoutInflater.class, "setPrivateFactory");
            if (methodB != null) {
                p.a(this, methodB, new g((LayoutInflater.Factory2) getContext(), this, this.f4900c));
            }
            this.f4901d = true;
        }
    }

    @Override // android.view.LayoutInflater
    @TargetApi(11)
    protected View onCreateView(View view, String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return this.f4900c.a(super.onCreateView(view, str, attributeSet), getContext(), attributeSet);
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        View viewOnCreateView = null;
        for (String str2 : f4898a) {
            try {
                viewOnCreateView = createView(str, str2, attributeSet);
            } catch (ClassNotFoundException e2) {
            }
        }
        if (viewOnCreateView == null) {
            viewOnCreateView = super.onCreateView(str, attributeSet);
        }
        return this.f4900c.a(viewOnCreateView, viewOnCreateView.getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View a(View view, View view2, String str, Context context, AttributeSet attributeSet) {
        if (a.a().e() && view2 == null && str.indexOf(46) > -1) {
            if (this.f4902e == null) {
                this.f4902e = p.a(LayoutInflater.class, "mConstructorArgs");
            }
            Object[] objArr = (Object[]) p.a(this.f4902e, this);
            Object obj = objArr[0];
            objArr[0] = context;
            p.a(this.f4902e, this, objArr);
            try {
                view2 = createView(str, null, attributeSet);
            } catch (ClassNotFoundException e2) {
            } finally {
                objArr[0] = obj;
                p.a(this.f4902e, this, objArr);
            }
        }
        return view2;
    }
}
