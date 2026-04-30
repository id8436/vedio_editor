package com.a.a.a;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.behance.sdk.util.BehanceSDKConstants;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: Job.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class r implements Serializable {
    public static final int DEFAULT_RETRY_LIMIT = 20;
    static final String SINGLE_ID_TAG_PREFIX = "job-single-id:";
    private static final long serialVersionUID = 3;
    private transient Context applicationContext;
    private transient boolean cancelOnDeadline;
    volatile transient boolean cancelled;
    private transient int currentRunCount;
    private transient long deadlineInMs;
    private transient long delayInMs;
    private transient String groupId;
    private transient String id = UUID.randomUUID().toString();
    private volatile transient boolean isDeadlineReached;
    private transient boolean persistent;
    transient int priority;
    private transient Set<String> readonlyTags;
    transient int requiredNetworkType;
    private volatile transient boolean sealed;

    public abstract void onAdded();

    protected abstract void onCancel(int i, @Nullable Throwable th);

    public abstract void onRun() throws Throwable;

    protected abstract ae shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2);

    protected r(ac acVar) {
        this.requiredNetworkType = acVar.f415a;
        this.persistent = acVar.e();
        this.groupId = acVar.c();
        this.priority = acVar.f();
        this.delayInMs = Math.max(0L, acVar.g());
        this.deadlineInMs = Math.max(0L, acVar.h());
        this.cancelOnDeadline = acVar.j();
        String strD = acVar.d();
        if (acVar.i() != null || strD != null) {
            HashSet<String> hashSetI = acVar.i() != null ? acVar.i() : new HashSet<>();
            if (strD != null) {
                String strCreateTagForSingleId = createTagForSingleId(strD);
                hashSetI.add(strCreateTagForSingleId);
                if (this.groupId == null) {
                    this.groupId = strCreateTagForSingleId;
                }
            }
            this.readonlyTags = Collections.unmodifiableSet(hashSetI);
        }
        if (this.deadlineInMs > 0 && this.deadlineInMs < this.delayInMs) {
            throw new IllegalArgumentException("deadline cannot be less than the delay. It does not make sense. deadline:" + this.deadlineInMs + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + "delay:" + this.delayInMs);
        }
    }

    public final String getId() {
        return this.id;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final long getDelayInMs() {
        return this.delayInMs;
    }

    @Nullable
    public final Set<String> getTags() {
        return this.readonlyTags;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        if (!this.sealed) {
            throw new IllegalStateException("A job cannot be serialized w/o first being added into a job manager.");
        }
    }

    final void updateFromJobHolder(s sVar) {
        if (this.sealed) {
            throw new IllegalStateException("Cannot set a Job from JobHolder after it is sealed.");
        }
        this.id = sVar.f611a;
        this.groupId = sVar.f613c;
        this.priority = sVar.b();
        this.persistent = sVar.f612b;
        this.readonlyTags = sVar.f616f;
        this.requiredNetworkType = sVar.f614d;
        this.sealed = true;
    }

    public final boolean isPersistent() {
        return this.persistent;
    }

    final int safeRun(s sVar, int i, com.a.a.a.k.b bVar) {
        boolean z;
        boolean zA;
        boolean z2;
        this.currentRunCount = i;
        if (com.a.a.a.f.b.b()) {
            com.a.a.a.f.b.a("running job %s", getClass().getSimpleName());
        }
        try {
            onRun();
            if (com.a.a.a.f.b.b()) {
                com.a.a.a.f.b.a("finished job %s", this);
            }
            th = null;
            z2 = false;
            zA = false;
            z = false;
        } catch (Throwable th) {
            th = th;
            com.a.a.a.f.b.a(th, "error while executing job %s", this);
            z = sVar.h() && sVar.g() <= bVar.a();
            boolean z3 = i < getRetryLimit() && !z;
            if (!z3 || this.cancelled) {
                zA = z3;
                z2 = true;
            } else {
                try {
                    ae aeVarShouldReRunOnThrowable = shouldReRunOnThrowable(th, i, getRetryLimit());
                    if (aeVarShouldReRunOnThrowable == null) {
                        aeVarShouldReRunOnThrowable = ae.f422a;
                    }
                    sVar.f617g = aeVarShouldReRunOnThrowable;
                    zA = aeVarShouldReRunOnThrowable.a();
                    z2 = true;
                } catch (Throwable th2) {
                    com.a.a.a.f.b.a(th2, "shouldReRunOnThrowable did throw an exception", new Object[0]);
                    zA = z3;
                    z2 = true;
                }
            }
        }
        Object[] objArr = new Object[4];
        objArr[0] = this;
        objArr[1] = Boolean.valueOf(z2 ? false : true);
        objArr[2] = Boolean.valueOf(zA);
        objArr[3] = Boolean.valueOf(this.cancelled);
        com.a.a.a.f.b.a("safeRunResult for %s : %s. re run:%s. cancelled: %s", objArr);
        if (!z2) {
            return 1;
        }
        if (sVar.p()) {
            return 6;
        }
        if (sVar.n()) {
            return 3;
        }
        if (zA) {
            return 4;
        }
        if (z) {
            return 7;
        }
        if (i < getRetryLimit()) {
            sVar.a(th);
            return 5;
        }
        sVar.a(th);
        return 2;
    }

    public final int getCurrentRunCount() {
        return this.currentRunCount;
    }

    public final String getRunGroupId() {
        return this.groupId;
    }

    public final String getSingleInstanceId() {
        if (this.readonlyTags != null) {
            for (String str : this.readonlyTags) {
                if (str.startsWith(SINGLE_ID_TAG_PREFIX)) {
                    return str;
                }
            }
        }
        return null;
    }

    private String createTagForSingleId(String str) {
        return SINGLE_ID_TAG_PREFIX + str;
    }

    protected int getRetryLimit() {
        return 20;
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public void assertNotCancelled() {
        if (this.cancelled) {
            throw new RuntimeException("job is cancelled");
        }
    }

    void setApplicationContext(Context context) {
        this.applicationContext = context;
    }

    void setDeadlineReached(boolean z) {
        this.isDeadlineReached = z;
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    public boolean isDeadlineReached() {
        return this.isDeadlineReached;
    }

    public final boolean requiresNetwork() {
        return this.requiredNetworkType >= 1;
    }

    public final boolean requiresUnmeteredNetwork() {
        return this.requiredNetworkType >= 2;
    }

    long getDeadlineInMs() {
        return this.deadlineInMs;
    }

    boolean shouldCancelOnDeadline() {
        return this.cancelOnDeadline;
    }
}
