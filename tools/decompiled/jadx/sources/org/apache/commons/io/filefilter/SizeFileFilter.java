package org.apache.commons.io.filefilter;

import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class SizeFileFilter extends AbstractFileFilter implements Serializable {
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j) {
        this(j, true);
    }

    public SizeFileFilter(long j, boolean z) {
        if (j < 0) {
            throw new IllegalArgumentException("The size must be non-negative");
        }
        this.size = j;
        this.acceptLarger = z;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        boolean z = file.length() < this.size;
        return this.acceptLarger ? !z : z;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + "(" + (this.acceptLarger ? ">=" : Engagement.Comparison.LT) + this.size + ")";
    }
}
