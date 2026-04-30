package com.alertdialogpro;

import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;

/* JADX INFO: compiled from: ProgressDialogPro.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f650a;

    c(b bVar) {
        this.f650a = bVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int progress = this.f650a.f644b.getProgress();
        int max = this.f650a.f644b.getMax();
        if (this.f650a.f648f != null) {
            this.f650a.f647e.setText(String.format(this.f650a.f648f, Integer.valueOf(progress), Integer.valueOf(max)));
        } else {
            this.f650a.f647e.setText("");
        }
        if (this.f650a.h == null) {
            this.f650a.f649g.setText("");
            return;
        }
        SpannableString spannableString = new SpannableString(this.f650a.h.format(((double) progress) / ((double) max)));
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
        this.f650a.f649g.setText(spannableString);
    }
}
