package com.adobe.premiereclip.project.sequence;

/* JADX INFO: loaded from: classes2.dex */
public class Transition {
    public float blendFactor;
    public TransitionType type;

    public enum TransitionType {
        NULL,
        FADE_IN,
        FADE_OUT,
        CROSS_FADE
    }

    public Transition(TransitionType transitionType, float f2) {
        this.type = transitionType;
        this.blendFactor = f2;
    }
}
