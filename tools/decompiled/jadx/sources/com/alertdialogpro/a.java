package com.alertdialogpro;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import com.alertdialogpro.internal.AlertController;

/* JADX INFO: compiled from: AlertDialogPro.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends AlertDialog implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AlertController f642a;

    protected a(Context context, int i) {
        super(context, i);
        this.f642a = new AlertController(getContext(), this, getWindow());
    }

    static int a(Context context, int i) {
        if (i < 16777216) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(e.alertDialogProTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    @Override // android.app.AlertDialog
    public Button getButton(int i) {
        return this.f642a.b(i);
    }

    @Override // android.app.AlertDialog
    public ListView getListView() {
        return this.f642a.b();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f642a.a(charSequence);
    }

    @Override // android.app.AlertDialog
    public void setCustomTitle(View view) {
        this.f642a.b(view);
    }

    @Override // android.app.AlertDialog
    public void setMessage(CharSequence charSequence) {
        this.f642a.b(charSequence);
    }

    @Override // android.app.AlertDialog
    public void setView(View view) {
        this.f642a.c(view);
    }

    @Override // android.app.AlertDialog
    public void setView(View view, int i, int i2, int i3, int i4) {
        this.f642a.a(view, i, i2, i3, i4);
    }

    @Override // android.app.AlertDialog
    public void setButton(int i, CharSequence charSequence, Message message) {
        this.f642a.a(i, charSequence, null, message);
    }

    @Override // android.app.AlertDialog
    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f642a.a(i, charSequence, onClickListener, null);
    }

    @Override // android.app.AlertDialog
    public void setIcon(int i) {
        this.f642a.a(i);
    }

    @Override // android.app.AlertDialog
    public void setIcon(Drawable drawable) {
        this.f642a.a(drawable);
    }

    @Override // android.app.AlertDialog
    public void setIconAttribute(int i) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i, typedValue, true);
        this.f642a.a(typedValue.resourceId);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        this.f642a.a();
    }

    @Override // android.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f642a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f642a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }
}
