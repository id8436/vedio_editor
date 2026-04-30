package com.crashlytics.android.answers;

import c.a.a.a.a.c.a.a;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
class RandomBackoff implements a {
    final a backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(a aVar, double d2) {
        this(aVar, d2, new Random());
    }

    public RandomBackoff(a aVar, double d2, Random random) {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        }
        if (aVar == null) {
            throw new NullPointerException("backoff must not be null");
        }
        if (random == null) {
            throw new NullPointerException("random must not be null");
        }
        this.backoff = aVar;
        this.jitterPercent = d2;
        this.random = random;
    }

    @Override // c.a.a.a.a.c.a.a
    public long getDelayMillis(int i) {
        return (long) (randomJitter() * this.backoff.getDelayMillis(i));
    }

    double randomJitter() {
        double d2 = 1.0d - this.jitterPercent;
        return d2 + (((this.jitterPercent + 1.0d) - d2) * this.random.nextDouble());
    }
}
