package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Ticker;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes3.dex */
@Beta
@ThreadSafe
public abstract class RateLimiter {
    double maxPermits;
    private final Object mutex;
    private long nextFreeTicketMicros;
    private final long offsetNanos;
    volatile double stableIntervalMicros;
    double storedPermits;
    private final SleepingTicker ticker;

    abstract void doSetRate(double d2, double d3);

    abstract long storedPermitsToWaitTime(double d2, double d3);

    public static RateLimiter create(double d2) {
        return create(SleepingTicker.SYSTEM_TICKER, d2);
    }

    @VisibleForTesting
    static RateLimiter create(SleepingTicker sleepingTicker, double d2) {
        Bursty bursty = new Bursty(sleepingTicker, 1.0d);
        bursty.setRate(d2);
        return bursty;
    }

    public static RateLimiter create(double d2, long j, TimeUnit timeUnit) {
        return create(SleepingTicker.SYSTEM_TICKER, d2, j, timeUnit);
    }

    @VisibleForTesting
    static RateLimiter create(SleepingTicker sleepingTicker, double d2, long j, TimeUnit timeUnit) {
        WarmingUp warmingUp = new WarmingUp(sleepingTicker, j, timeUnit);
        warmingUp.setRate(d2);
        return warmingUp;
    }

    @VisibleForTesting
    static RateLimiter createWithCapacity(SleepingTicker sleepingTicker, double d2, long j, TimeUnit timeUnit) {
        Bursty bursty = new Bursty(sleepingTicker, timeUnit.toNanos(j) / 1.0E9d);
        bursty.setRate(d2);
        return bursty;
    }

    private RateLimiter(SleepingTicker sleepingTicker) {
        this.mutex = new Object();
        this.nextFreeTicketMicros = 0L;
        this.ticker = sleepingTicker;
        this.offsetNanos = sleepingTicker.read();
    }

    public final void setRate(double d2) {
        Preconditions.checkArgument(d2 > 0.0d && !Double.isNaN(d2), "rate must be positive");
        synchronized (this.mutex) {
            resync(readSafeMicros());
            double micros = TimeUnit.SECONDS.toMicros(1L) / d2;
            this.stableIntervalMicros = micros;
            doSetRate(d2, micros);
        }
    }

    public final double getRate() {
        return TimeUnit.SECONDS.toMicros(1L) / this.stableIntervalMicros;
    }

    public double acquire() {
        return acquire(1);
    }

    public double acquire(int i) {
        long jReserve = reserve(i);
        this.ticker.sleepMicrosUninterruptibly(jReserve);
        return (jReserve * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }

    long reserve() {
        return reserve(1);
    }

    long reserve(int i) {
        long jReserveNextTicket;
        checkPermits(i);
        synchronized (this.mutex) {
            jReserveNextTicket = reserveNextTicket(i, readSafeMicros());
        }
        return jReserveNextTicket;
    }

    public boolean tryAcquire(long j, TimeUnit timeUnit) {
        return tryAcquire(1, j, timeUnit);
    }

    public boolean tryAcquire(int i) {
        return tryAcquire(i, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire() {
        return tryAcquire(1, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire(int i, long j, TimeUnit timeUnit) {
        long micros = timeUnit.toMicros(j);
        checkPermits(i);
        synchronized (this.mutex) {
            long safeMicros = readSafeMicros();
            if (this.nextFreeTicketMicros > micros + safeMicros) {
                return false;
            }
            this.ticker.sleepMicrosUninterruptibly(reserveNextTicket(i, safeMicros));
            return true;
        }
    }

    private static void checkPermits(int i) {
        Preconditions.checkArgument(i > 0, "Requested permits must be positive");
    }

    private long reserveNextTicket(double d2, long j) {
        resync(j);
        long jMax = Math.max(0L, this.nextFreeTicketMicros - j);
        double dMin = Math.min(d2, this.storedPermits);
        this.nextFreeTicketMicros = ((long) ((d2 - dMin) * this.stableIntervalMicros)) + storedPermitsToWaitTime(this.storedPermits, dMin) + this.nextFreeTicketMicros;
        this.storedPermits -= dMin;
        return jMax;
    }

    private void resync(long j) {
        if (j > this.nextFreeTicketMicros) {
            this.storedPermits = Math.min(this.maxPermits, this.storedPermits + ((j - this.nextFreeTicketMicros) / this.stableIntervalMicros));
            this.nextFreeTicketMicros = j;
        }
    }

    private long readSafeMicros() {
        return TimeUnit.NANOSECONDS.toMicros(this.ticker.read() - this.offsetNanos);
    }

    public String toString() {
        return String.format("RateLimiter[stableRate=%3.1fqps]", Double.valueOf(1000000.0d / this.stableIntervalMicros));
    }

    class WarmingUp extends RateLimiter {
        private double halfPermits;
        private double slope;
        final long warmupPeriodMicros;

        WarmingUp(SleepingTicker sleepingTicker, long j, TimeUnit timeUnit) {
            super(sleepingTicker);
            this.warmupPeriodMicros = timeUnit.toMicros(j);
        }

        @Override // com.google.common.util.concurrent.RateLimiter
        void doSetRate(double d2, double d3) {
            double d4 = this.maxPermits;
            this.maxPermits = this.warmupPeriodMicros / d3;
            this.halfPermits = this.maxPermits / 2.0d;
            this.slope = ((3.0d * d3) - d3) / this.halfPermits;
            if (d4 == Double.POSITIVE_INFINITY) {
                this.storedPermits = 0.0d;
            } else {
                this.storedPermits = d4 == 0.0d ? this.maxPermits : (this.storedPermits * this.maxPermits) / d4;
            }
        }

        @Override // com.google.common.util.concurrent.RateLimiter
        long storedPermitsToWaitTime(double d2, double d3) {
            double d4 = d2 - this.halfPermits;
            long jPermitsToTime = 0;
            if (d4 > 0.0d) {
                double dMin = Math.min(d4, d3);
                jPermitsToTime = (long) (((permitsToTime(d4) + permitsToTime(d4 - dMin)) * dMin) / 2.0d);
                d3 -= dMin;
            }
            return (long) (jPermitsToTime + (this.stableIntervalMicros * d3));
        }

        private double permitsToTime(double d2) {
            return this.stableIntervalMicros + (this.slope * d2);
        }
    }

    class Bursty extends RateLimiter {
        final double maxBurstSeconds;

        Bursty(SleepingTicker sleepingTicker, double d2) {
            super(sleepingTicker);
            this.maxBurstSeconds = d2;
        }

        @Override // com.google.common.util.concurrent.RateLimiter
        void doSetRate(double d2, double d3) {
            double d4 = this.maxPermits;
            this.maxPermits = this.maxBurstSeconds * d2;
            this.storedPermits = d4 != 0.0d ? (this.storedPermits * this.maxPermits) / d4 : 0.0d;
        }

        @Override // com.google.common.util.concurrent.RateLimiter
        long storedPermitsToWaitTime(double d2, double d3) {
            return 0L;
        }
    }

    @VisibleForTesting
    abstract class SleepingTicker extends Ticker {
        static final SleepingTicker SYSTEM_TICKER = new SleepingTicker() { // from class: com.google.common.util.concurrent.RateLimiter.SleepingTicker.1
            @Override // com.google.common.base.Ticker
            public long read() {
                return systemTicker().read();
            }

            @Override // com.google.common.util.concurrent.RateLimiter.SleepingTicker
            public void sleepMicrosUninterruptibly(long j) {
                if (j > 0) {
                    Uninterruptibles.sleepUninterruptibly(j, TimeUnit.MICROSECONDS);
                }
            }
        };

        abstract void sleepMicrosUninterruptibly(long j);

        SleepingTicker() {
        }
    }
}
