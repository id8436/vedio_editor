package com.g.a;

/* JADX INFO: compiled from: FloatEvaluator.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements ab<Number> {
    @Override // com.g.a.ab
    public Float a(float f2, Number number, Number number2) {
        float fFloatValue = number.floatValue();
        return Float.valueOf(fFloatValue + ((number2.floatValue() - fFloatValue) * f2));
    }
}
