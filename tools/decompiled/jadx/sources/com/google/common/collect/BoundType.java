package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
public enum BoundType {
    OPEN { // from class: com.google.common.collect.BoundType.1
        @Override // com.google.common.collect.BoundType
        BoundType flip() {
            return CLOSED;
        }
    },
    CLOSED { // from class: com.google.common.collect.BoundType.2
        @Override // com.google.common.collect.BoundType
        BoundType flip() {
            return OPEN;
        }
    };

    abstract BoundType flip();

    static BoundType forBoolean(boolean z) {
        return z ? CLOSED : OPEN;
    }
}
